import serial
import csv

# Configure serial port
ser = serial.Serial('COM3', 115200)

expected_points = 576 # expected points to be measured by sensor

while True:

    try:
        sensor_measurement = int(ser.readline().decode('utf-8').strip()) #reads sensor_measurement sent by STM and transforms it to int

        if (sensor_measurement == 5000): #start condition - the STM will send 5000
            
            print("\nStarting...")

            measurement_set = [] #measurement
            wing_set = [] #wing servo angle
            base_set = [] #base servo angle
            n_points = 0

            while True:

                sensor_measurement = int(ser.readline().decode('utf-8').strip()) #reads sensor_measurement sent by STM and transforms it to in
                

                if (sensor_measurement == 6000): # End condition - the STM will send 6000
                    print("\nNumber of points: ", n_points)
                    break  # from inner while
                else:
                    wing_angle = int(ser.readline().decode('utf-8').strip())
                    base_angle = int(ser.readline().decode('utf-8').strip())

                    measurement_set.append(sensor_measurement)
                    wing_set.append(wing_angle)
                    base_set.append(base_angle)
                    print("\nMeasurement: ", sensor_measurement) #just to see the sensor_measurement point on the terminal, can be deleted later
                    print("Wing angle: ", wing_angle)
                    print("Base angle: ", base_angle)
                    n_points += 1

            # Exits while
            
            if n_points != expected_points: # Determines if the run can be used for our sensor_measurement collection
                print("This run didn't achieve the expected number of points!\nPlease redo the sample")
                print("Expected number of points: ", expected_points)

            else:
                # Classification of the measurement_set
                while True:
                    classification = input(
                        "\nClassify the sample (0 or 1): ")
                    if classification not in ('0', '1'):
                        print("\nUnvalid option. Please select 0 or 1")
                    else:
                        # Adds classification at the end of the measurement_set and others set (for sizing)
                        measurement_set.append(classification)
                        wing_set.append(classification)
                        base_set.append(classification)

                        # Writes read sensor_measurement into the csv file
                        # CHANGE FILE PATH 
                        with open('cubevase\Cube_vase.csv', 'a', newline='') as csvfile:
                            csvwriter = csv.writer(csvfile)
                            csvwriter.writerow(measurement_set)

                        #with open('wing_angle.csv', 'a', newline='') as csvfile:
                            #csvwriter = csv.writer(csvfile)
                            #csvwriter.writerow(wing_set)

                        #with open('base_angle.csv', 'a', newline='') as csvfile:
                            #csvwriter = csv.writer(csvfile)
                            #csvwriter.writerow(base_set)

                        break  # from inner while

    except KeyboardInterrupt: # detects when you press CTRL + C
        ser.close() #closes serial port
        break #exi`````````````````````````````ts main while

#program ends