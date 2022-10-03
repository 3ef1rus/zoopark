use zoopark
SELECT Animal.Hight,Animal.Weigth,[Vaccination Name]=Vaccinations.Name,[Disease Name]=Disease.Name,PassportAnimal.[Data Birth],Animal.[Date join],PassportAnimal.Childs
FROM Animal,PassportAnimal,Vaccinations,VaccinationsList,MedicalCard,Disease,DiseaseList
WHERE PassportAnimal.Name='Фиеста' AND
PassportAnimal.passportAnimaID=Animal.passportAnimaID AND
PassportAnimal.MedicalCardID=MedicalCard.medicalCardID AND
MedicalCard.medicalCardID=VaccinationsList.idMedCard AND
VaccinationsList.vaccinationID=Vaccinations.vaccinationID AND
MedicalCard.medicalCardID=DiseaseList.idMedCard AND
DiseaseList.diseaseID=Disease.diseaseID

GO