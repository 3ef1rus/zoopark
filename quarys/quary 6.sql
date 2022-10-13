use zoopark
SELECT Animal.[Date join],PassportAnimal.Sex,PassportAnimal.Childs,
[Animal Name]=PassportAnimal.Name, [Date Vaccination]=VaccinationsList.[Date]  
FROM Animal,MedicalCard,Vaccinations,VaccinationsList,PassportAnimal
WHERE Vaccinations.Name='D – против чумы' AND
 Vaccinations.vaccinationID=VaccinationsList.vaccinationID AND
 VaccinationsList.idMedCard=MedicalCard.medicalCardID AND
 MedicalCard.medicalCardID=PassportAnimal.MedicalCardID AND
 PassportAnimal.passportAnimaID=Animal.passportAnimaID