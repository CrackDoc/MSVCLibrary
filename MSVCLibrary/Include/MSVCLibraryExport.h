#ifndef MSVCLibraryExport_h__
#define MSVCLibraryExport_h__

#if defined(WIN32)

#ifdef MSVCLibrary_EXPORTS
#define MSVCLibrary_EXPORT __declspec(dllexport)
#else
#define  MSVCLibrary_EXPORT __declspec(dllimport)
#endif

#elif __linux__
#define MSVCLibrary_EXPORT

#else
#define MSVCLibrary_EXPORT 
#endif

#endif // MSVCLibraryExport_h__
