ДЗ 3 по Objective-C

Класс Doctor имеет делегатный протокол DoctorDelegate, который определяет метод doctorPrescribeMedicationToPatient.
В классе Doctor с помощью метода prescribeMedication отправляется сообщение делегату о том, что пациенту требуется принять лекарство.

Класс Patient реализует протокол DoctorDelegate и определяет метод takeMedication, который выполняет указание доктора и выпивает лекарство.

В main происходит создание объектов Doctor и Patient, а затем делегирование доктора пациенту путем установки свойства delegate.
Затем доктор вызывает метод prescribeMedication, и при наличии делегата будет выполнен метод doctorPrescribeMedicationToPatient у объекта пациента,
в результате чего пациент выпьет лекарство.
