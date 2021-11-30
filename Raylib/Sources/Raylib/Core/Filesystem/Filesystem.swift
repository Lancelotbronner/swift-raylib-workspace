//
//  File 2.swift
//  
//
//  Created by Christophe Bronner on 2021-11-24.
//

import CRaylib

//MARK: - Filesystem



// TODO: Implement file load callbacks
// void SetLoadFileDataCallback(LoadFileDataCallback callback);
// void SetSaveFileDataCallback(SaveFileDataCallback callback);
// void SetLoadFileTextCallback(LoadFileTextCallback callback);
// void SetSaveFileTextCallback(SaveFileTextCallback callback);

/*
 TODO: Implement file system
 unsigned char *LoadFileData(const char *fileName, unsigned int *bytesRead); // Load file data as byte array (read)
 void UnloadFileData(unsigned char *data); // Unload file data allocated by LoadFileData()
 bool SaveFileData(const char *fileName, void *data, unsigned int bytesToWrite); // Save data to file from byte array (write), returns true on success
 char *LoadFileText(const char *fileName); // Load text data from file (read), returns a '\0' terminated string
 void UnloadFileText(char *text); // Unload file text data allocated by LoadFileText()
 bool SaveFileText(const char *fileName, char *text); // Save text data to file (write), string must be '\0' terminated, returns true on success
 bool FileExists(const char *fileName); // Check if file exists
 bool DirectoryExists(const char *dirPath); // Check if a directory path exists
 bool IsFileExtension(const char *fileName, const char *ext); // Check file extension (including point: .png, .wav)
 const char *GetFileExtension(const char *fileName); // Get pointer to extension for a filename string (includes dot: '.png')
 const char *GetFileName(const char *filePath); // Get pointer to filename for a path string
 const char *GetFileNameWithoutExt(const char *filePath); // Get filename string without extension (uses static string)
 const char *GetDirectoryPath(const char *filePath); // Get full path for a given fileName with path (uses static string)
 const char *GetPrevDirectoryPath(const char *dirPath); // Get previous directory path for a given path (uses static string)
 const char *GetWorkingDirectory(void); // Get current working directory (uses static string)
 char **GetDirectoryFiles(const char *dirPath, int *count); // Get filenames in a directory path (memory should be freed)
 void ClearDirectoryFiles(void); // Clear directory files paths buffers (free memory)
 bool ChangeDirectory(const char *dir); // Change working directory, return true on success
 long GetFileModTime(const char *fileName); // Get file modification time (last write time)
 */
