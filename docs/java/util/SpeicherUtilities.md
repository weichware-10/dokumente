# SpeicherUtilities


## `public class SpeicherUtilities`

Operations for the TrialData.

## `public SpeicherUtilities(String location)`

Creates SpeicherUtilities with Data Location.

 * **Parameters:** `location` — - the Location where the Data is stored

## `public String getLocation()`

Returns the Data Location.

 * **Returns:** location

## `public boolean setLocation(String location)`

Sets the Data Location.

 * **Parameters:** `location` — - the Location where the Data should get stored
 * **Returns:** returns true if setLocation was sucessfull

## `public boolean deleteData(String inputString)`

Function to delete the specific Data. TODO: Richtiges Löschen implementieren

 * **Parameters:** `inputString` — - Data to delete
 * **Returns:** returns true if deletion was sucessfull

## `public TrialData searchData(String trialId)`

Function to search for specific Data from a function. TODO: Richtige Suche implementieren

 * **Parameters:** `trialId` — - Data to search
 * **Returns:** returns the requested Data

## `public boolean saveData(TrialData inputData)`

Function to save the Information from the functions. TODO: Richtiges Speichern implementieren

 * **Parameters:** `inputData` — - The Data to save
 * **Returns:** return true if the save was sucessfull
