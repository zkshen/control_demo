#line 1 "..\\SEGGER_RTT.c"





























































 

#line 1 "..\\SEGGER_RTT.h"




















































 




#line 1 "..\\SEGGER_RTT_Conf.h"




















































 













 




















 
#line 130 "..\\SEGGER_RTT_Conf.h"




 
#line 154 "..\\SEGGER_RTT_Conf.h"




 









 
#line 59 "..\\SEGGER_RTT.h"






 






 





typedef struct {
  const     char*    sName;         
            char*    pBuffer;       
            unsigned SizeOfBuffer;  
            unsigned WrOff;         
  volatile  unsigned RdOff;         
            unsigned Flags;         
} SEGGER_RTT_BUFFER_UP;





typedef struct {
  const     char*    sName;         
            char*    pBuffer;       
            unsigned SizeOfBuffer;  
  volatile  unsigned WrOff;         
            unsigned RdOff;         
            unsigned Flags;         
} SEGGER_RTT_BUFFER_DOWN;






typedef struct {
  char                    acID[16];                                 
  int                     MaxNumUpBuffers;                          
  int                     MaxNumDownBuffers;                        
  SEGGER_RTT_BUFFER_UP    aUp[(2)];       
  SEGGER_RTT_BUFFER_DOWN  aDown[(2)];   
} SEGGER_RTT_CB;






 
extern SEGGER_RTT_CB _SEGGER_RTT;






 



int          SEGGER_RTT_AllocDownBuffer  (const char* sName, void* pBuffer, unsigned BufferSize, unsigned Flags);
int          SEGGER_RTT_AllocUpBuffer    (const char* sName, void* pBuffer, unsigned BufferSize, unsigned Flags);
int          SEGGER_RTT_ConfigUpBuffer   (unsigned BufferIndex, const char* sName, void* pBuffer, unsigned BufferSize, unsigned Flags);
int          SEGGER_RTT_ConfigDownBuffer (unsigned BufferIndex, const char* sName, void* pBuffer, unsigned BufferSize, unsigned Flags);
int          SEGGER_RTT_GetKey           (void);
unsigned     SEGGER_RTT_HasData          (unsigned BufferIndex);
int          SEGGER_RTT_HasKey           (void);
void         SEGGER_RTT_Init             (void);
unsigned     SEGGER_RTT_Read             (unsigned BufferIndex,       void* pBuffer, unsigned BufferSize);
unsigned     SEGGER_RTT_ReadNoLock       (unsigned BufferIndex,       void* pData,   unsigned BufferSize);
int          SEGGER_RTT_SetNameDownBuffer(unsigned BufferIndex, const char* sName);
int          SEGGER_RTT_SetNameUpBuffer  (unsigned BufferIndex, const char* sName);
int          SEGGER_RTT_WaitKey          (void);
unsigned     SEGGER_RTT_Write            (unsigned BufferIndex, const void* pBuffer, unsigned NumBytes);
unsigned     SEGGER_RTT_WriteNoLock      (unsigned BufferIndex, const void* pBuffer, unsigned NumBytes);
unsigned     SEGGER_RTT_WriteSkipNoLock  (unsigned BufferIndex, const void* pBuffer, unsigned NumBytes);
unsigned     SEGGER_RTT_WriteString      (unsigned BufferIndex, const char* s);










 
int     SEGGER_RTT_SetTerminal        (char TerminalId);
int     SEGGER_RTT_TerminalOut        (char TerminalId, const char* s);






 
int SEGGER_RTT_printf(unsigned BufferIndex, const char * sFormat, ...);










 
















#line 203 "..\\SEGGER_RTT.h"

#line 212 "..\\SEGGER_RTT.h"

#line 221 "..\\SEGGER_RTT.h"

#line 230 "..\\SEGGER_RTT.h"




 
#line 65 "..\\SEGGER_RTT.c"

#line 1 "F:\\Program Files\\Keil5\\ARM\\ARMCC\\Bin\\..\\include\\string.h"
 
 
 
 




 








 












#line 38 "F:\\Program Files\\Keil5\\ARM\\ARMCC\\Bin\\..\\include\\string.h"


  



    typedef unsigned int size_t;    
#line 54 "F:\\Program Files\\Keil5\\ARM\\ARMCC\\Bin\\..\\include\\string.h"




extern __declspec(__nothrow) void *memcpy(void * __restrict  ,
                    const void * __restrict  , size_t  ) __attribute__((__nonnull__(1,2)));
   




 
extern __declspec(__nothrow) void *memmove(void *  ,
                    const void *  , size_t  ) __attribute__((__nonnull__(1,2)));
   







 
extern __declspec(__nothrow) char *strcpy(char * __restrict  , const char * __restrict  ) __attribute__((__nonnull__(1,2)));
   




 
extern __declspec(__nothrow) char *strncpy(char * __restrict  , const char * __restrict  , size_t  ) __attribute__((__nonnull__(1,2)));
   





 

extern __declspec(__nothrow) char *strcat(char * __restrict  , const char * __restrict  ) __attribute__((__nonnull__(1,2)));
   




 
extern __declspec(__nothrow) char *strncat(char * __restrict  , const char * __restrict  , size_t  ) __attribute__((__nonnull__(1,2)));
   






 






 

extern __declspec(__nothrow) int memcmp(const void *  , const void *  , size_t  ) __attribute__((__nonnull__(1,2)));
   





 
extern __declspec(__nothrow) int strcmp(const char *  , const char *  ) __attribute__((__nonnull__(1,2)));
   




 
extern __declspec(__nothrow) int strncmp(const char *  , const char *  , size_t  ) __attribute__((__nonnull__(1,2)));
   






 
extern __declspec(__nothrow) int strcasecmp(const char *  , const char *  ) __attribute__((__nonnull__(1,2)));
   





 
extern __declspec(__nothrow) int strncasecmp(const char *  , const char *  , size_t  ) __attribute__((__nonnull__(1,2)));
   






 
extern __declspec(__nothrow) int strcoll(const char *  , const char *  ) __attribute__((__nonnull__(1,2)));
   







 

extern __declspec(__nothrow) size_t strxfrm(char * __restrict  , const char * __restrict  , size_t  ) __attribute__((__nonnull__(2)));
   













 


#line 193 "F:\\Program Files\\Keil5\\ARM\\ARMCC\\Bin\\..\\include\\string.h"
extern __declspec(__nothrow) void *memchr(const void *  , int  , size_t  ) __attribute__((__nonnull__(1)));

   





 

#line 209 "F:\\Program Files\\Keil5\\ARM\\ARMCC\\Bin\\..\\include\\string.h"
extern __declspec(__nothrow) char *strchr(const char *  , int  ) __attribute__((__nonnull__(1)));

   




 

extern __declspec(__nothrow) size_t strcspn(const char *  , const char *  ) __attribute__((__nonnull__(1,2)));
   




 

#line 232 "F:\\Program Files\\Keil5\\ARM\\ARMCC\\Bin\\..\\include\\string.h"
extern __declspec(__nothrow) char *strpbrk(const char *  , const char *  ) __attribute__((__nonnull__(1,2)));

   




 

#line 247 "F:\\Program Files\\Keil5\\ARM\\ARMCC\\Bin\\..\\include\\string.h"
extern __declspec(__nothrow) char *strrchr(const char *  , int  ) __attribute__((__nonnull__(1)));

   





 

extern __declspec(__nothrow) size_t strspn(const char *  , const char *  ) __attribute__((__nonnull__(1,2)));
   



 

#line 270 "F:\\Program Files\\Keil5\\ARM\\ARMCC\\Bin\\..\\include\\string.h"
extern __declspec(__nothrow) char *strstr(const char *  , const char *  ) __attribute__((__nonnull__(1,2)));

   





 

extern __declspec(__nothrow) char *strtok(char * __restrict  , const char * __restrict  ) __attribute__((__nonnull__(2)));
extern __declspec(__nothrow) char *_strtok_r(char *  , const char *  , char **  ) __attribute__((__nonnull__(2,3)));

extern __declspec(__nothrow) char *strtok_r(char *  , const char *  , char **  ) __attribute__((__nonnull__(2,3)));

   

































 

extern __declspec(__nothrow) void *memset(void *  , int  , size_t  ) __attribute__((__nonnull__(1)));
   



 
extern __declspec(__nothrow) char *strerror(int  );
   





 
extern __declspec(__nothrow) size_t strlen(const char *  ) __attribute__((__nonnull__(1)));
   



 

extern __declspec(__nothrow) size_t strlcpy(char *  , const char *  , size_t  ) __attribute__((__nonnull__(1,2)));
   
















 

extern __declspec(__nothrow) size_t strlcat(char *  , const char *  , size_t  ) __attribute__((__nonnull__(1,2)));
   






















 

extern __declspec(__nothrow) void _membitcpybl(void *  , const void *  , int  , int  , size_t  ) __attribute__((__nonnull__(1,2)));
extern __declspec(__nothrow) void _membitcpybb(void *  , const void *  , int  , int  , size_t  ) __attribute__((__nonnull__(1,2)));
extern __declspec(__nothrow) void _membitcpyhl(void *  , const void *  , int  , int  , size_t  ) __attribute__((__nonnull__(1,2)));
extern __declspec(__nothrow) void _membitcpyhb(void *  , const void *  , int  , int  , size_t  ) __attribute__((__nonnull__(1,2)));
extern __declspec(__nothrow) void _membitcpywl(void *  , const void *  , int  , int  , size_t  ) __attribute__((__nonnull__(1,2)));
extern __declspec(__nothrow) void _membitcpywb(void *  , const void *  , int  , int  , size_t  ) __attribute__((__nonnull__(1,2)));
extern __declspec(__nothrow) void _membitmovebl(void *  , const void *  , int  , int  , size_t  ) __attribute__((__nonnull__(1,2)));
extern __declspec(__nothrow) void _membitmovebb(void *  , const void *  , int  , int  , size_t  ) __attribute__((__nonnull__(1,2)));
extern __declspec(__nothrow) void _membitmovehl(void *  , const void *  , int  , int  , size_t  ) __attribute__((__nonnull__(1,2)));
extern __declspec(__nothrow) void _membitmovehb(void *  , const void *  , int  , int  , size_t  ) __attribute__((__nonnull__(1,2)));
extern __declspec(__nothrow) void _membitmovewl(void *  , const void *  , int  , int  , size_t  ) __attribute__((__nonnull__(1,2)));
extern __declspec(__nothrow) void _membitmovewb(void *  , const void *  , int  , int  , size_t  ) __attribute__((__nonnull__(1,2)));
    














































 







#line 502 "F:\\Program Files\\Keil5\\ARM\\ARMCC\\Bin\\..\\include\\string.h"



 

#line 67 "..\\SEGGER_RTT.c"






 
























































 

static unsigned char _aTerminalId[16] = { '0', '1', '2', '3', '4', '5', '6', '7', '8', '9', 'A', 'B', 'C', 'D', 'E', 'F' };






 



static char _acUpBuffer  [(1024)];
static char _acDownBuffer[(16)];



SEGGER_RTT_CB _SEGGER_RTT;

static char _ActiveTerminal;






 









 



static void _DoInit(void) {
  SEGGER_RTT_CB* p;
  
  
  
  p = &_SEGGER_RTT;
  p->MaxNumUpBuffers    = (2);
  p->MaxNumDownBuffers  = (2);
  
  
  
  p->aUp[0].sName         = "Terminal";
  p->aUp[0].pBuffer       = _acUpBuffer;
  p->aUp[0].SizeOfBuffer  = sizeof(_acUpBuffer);
  p->aUp[0].RdOff         = 0u;
  p->aUp[0].WrOff         = 0u;
  p->aUp[0].Flags         = (0U);
  
  
  
  p->aDown[0].sName         = "Terminal";
  p->aDown[0].pBuffer       = _acDownBuffer;
  p->aDown[0].SizeOfBuffer  = sizeof(_acDownBuffer);
  p->aDown[0].RdOff         = 0u;
  p->aDown[0].WrOff         = 0u;
  p->aDown[0].Flags         = (0U);
  
  
  
  
  
  strcpy(&p->acID[7], "RTT");
  strcpy(&p->acID[0], "SEGGER");
  p->acID[6] = ' ';
}



















 
static unsigned _WriteBlocking(SEGGER_RTT_BUFFER_UP* pRing, const char* pBuffer, unsigned NumBytes) {
  unsigned NumBytesToWrite;
  unsigned NumBytesWritten;
  unsigned RdOff;
  unsigned WrOff;
  
  
  
  NumBytesWritten = 0u;
  WrOff = pRing->WrOff;
  do {
    RdOff = pRing->RdOff;                         
    if (RdOff > WrOff) {
      NumBytesToWrite = RdOff - WrOff - 1u;
    } else {
      NumBytesToWrite = pRing->SizeOfBuffer - (WrOff - RdOff + 1u);
    }
    NumBytesToWrite = (((NumBytesToWrite) < ((pRing->SizeOfBuffer - WrOff))) ? (NumBytesToWrite) : ((pRing->SizeOfBuffer - WrOff)));      
    NumBytesToWrite = (((NumBytesToWrite) < (NumBytes)) ? (NumBytesToWrite) : (NumBytes));
    memcpy(pRing->pBuffer + WrOff, pBuffer, NumBytesToWrite);
    NumBytesWritten += NumBytesToWrite;
    pBuffer         += NumBytesToWrite;
    NumBytes        -= NumBytesToWrite;
    WrOff           += NumBytesToWrite;
    if (WrOff == pRing->SizeOfBuffer) {
      WrOff = 0u;
    }
    pRing->WrOff = WrOff;
  } while (NumBytes);
  
  return NumBytesWritten;
}


















 
static void _WriteNoCheck(SEGGER_RTT_BUFFER_UP* pRing, const char* pData, unsigned NumBytes) {
  unsigned NumBytesAtOnce;
  unsigned WrOff;
  unsigned Rem;

  WrOff = pRing->WrOff;
  Rem = pRing->SizeOfBuffer - WrOff;
  if (Rem > NumBytes) {
    
    
    
    memcpy(pRing->pBuffer + WrOff, pData, NumBytes);
    pRing->WrOff = WrOff + NumBytes;
  } else {
    
    
    
    NumBytesAtOnce = Rem;
    memcpy(pRing->pBuffer + WrOff, pData, NumBytesAtOnce);
    NumBytesAtOnce = NumBytes - Rem;
    memcpy(pRing->pBuffer, pData + Rem, NumBytesAtOnce);
    pRing->WrOff = NumBytesAtOnce;
  }
}













 
static void _PostTerminalSwitch(SEGGER_RTT_BUFFER_UP* pRing, unsigned char TerminalId) {
  char ac[2];

  ac[0] = 0xFFu;
  ac[1] = _aTerminalId[TerminalId];  
  _WriteBlocking(pRing, ac, 2u);
}














 
static unsigned _GetAvailWriteSpace(SEGGER_RTT_BUFFER_UP* pRing) {
  unsigned RdOff;
  unsigned WrOff;
  unsigned r;
  
  
  
  
  RdOff = pRing->RdOff;
  WrOff = pRing->WrOff;
  if (RdOff <= WrOff) {
    r = pRing->SizeOfBuffer - 1u - WrOff + RdOff;
  } else {
    r = RdOff - WrOff - 1u;
  }
  return r;
}






 
















 
unsigned SEGGER_RTT_ReadNoLock(unsigned BufferIndex, void* pData, unsigned BufferSize) {
  unsigned                NumBytesRem;
  unsigned                NumBytesRead;
  unsigned                RdOff;
  unsigned                WrOff;
  unsigned char*          pBuffer;
  SEGGER_RTT_BUFFER_DOWN* pRing;
  
  do { if (_SEGGER_RTT . acID[0] == '\0') { _DoInit(); } } while (0);
  pRing = &_SEGGER_RTT.aDown[BufferIndex];
  pBuffer = (unsigned char*)pData;
  RdOff = pRing->RdOff;
  WrOff = pRing->WrOff;
  NumBytesRead = 0u;
  
  
  
  if (RdOff > WrOff) {
    NumBytesRem = pRing->SizeOfBuffer - RdOff;
    NumBytesRem = (((NumBytesRem) < (BufferSize)) ? (NumBytesRem) : (BufferSize));
    memcpy(pBuffer, pRing->pBuffer + RdOff, NumBytesRem);
    NumBytesRead += NumBytesRem;
    pBuffer      += NumBytesRem;
    BufferSize   -= NumBytesRem;
    RdOff        += NumBytesRem;
    
    
    
    if (RdOff == pRing->SizeOfBuffer) {
      RdOff = 0u;
    }
  }
  
  
  
  NumBytesRem = WrOff - RdOff;
  NumBytesRem = (((NumBytesRem) < (BufferSize)) ? (NumBytesRem) : (BufferSize));
  if (NumBytesRem > 0u) {
    memcpy(pBuffer, pRing->pBuffer + RdOff, NumBytesRem);
    NumBytesRead += NumBytesRem;
    pBuffer      += NumBytesRem;
    BufferSize   -= NumBytesRem;
    RdOff        += NumBytesRem;
  }
  if (NumBytesRead) {
    pRing->RdOff = RdOff;
  }
  
  return NumBytesRead;
}
















 
unsigned SEGGER_RTT_Read(unsigned BufferIndex, void* pBuffer, unsigned BufferSize) {
  unsigned NumBytesRead;
  
  ;
  
  
  
  NumBytesRead = SEGGER_RTT_ReadNoLock(BufferIndex, pBuffer, BufferSize);
  
  
  
  ;
  
  return NumBytesRead;
}
























 
unsigned SEGGER_RTT_WriteSkipNoLock(unsigned BufferIndex, const void* pBuffer, unsigned NumBytes) {
  const char*           pData;
  SEGGER_RTT_BUFFER_UP* pRing;
  unsigned              Avail;
  unsigned              RdOff;
  unsigned              WrOff;
  unsigned              Rem;

  pData = (const char *)pBuffer;
  
  
  
  pRing = &_SEGGER_RTT.aUp[BufferIndex];
  RdOff = pRing->RdOff;
  WrOff = pRing->WrOff;
  
  
  
  
  
  
  
  
  
  
  
  
  
  if (RdOff <= WrOff) {
    
    
    
    Avail = pRing->SizeOfBuffer - 1u - WrOff ;
    if (Avail >= NumBytes) {

      char* pDst;
      pDst = pRing->pBuffer + WrOff;
      WrOff += NumBytes;
      do {
        *pDst++ = *pData++;
      } while (--NumBytes);
      pRing->WrOff = WrOff + NumBytes;




      return 1;
    }
    
    
    
    Avail += RdOff;
    
    
    
    if (Avail >= NumBytes) {
      
      
      
      Rem = pRing->SizeOfBuffer - WrOff;      
      if (Rem > NumBytes) {
        memcpy(pRing->pBuffer + WrOff, pData, NumBytes);
        pRing->WrOff = WrOff + NumBytes;
      } else {
        
        
        
        memcpy(pRing->pBuffer + WrOff, pData, Rem);
        memcpy(pRing->pBuffer, pData + Rem, NumBytes - Rem);
        pRing->WrOff = NumBytes - Rem;
      }
      return 1;
    }
  } else {
    Avail = RdOff - WrOff - 1u;
    if (Avail >= NumBytes) {
      memcpy(pRing->pBuffer + WrOff, pData, NumBytes);
      pRing->WrOff = WrOff + NumBytes;
      return 1;
    }
  }
  
  
  
  return 0;
}























 
unsigned SEGGER_RTT_WriteNoLock(unsigned BufferIndex, const void* pBuffer, unsigned NumBytes) {
  unsigned              Status;
  unsigned              Avail;
  const char*           pData;
  SEGGER_RTT_BUFFER_UP* pRing;

  pData = (const char *)pBuffer;
  
  
  
  pRing = &_SEGGER_RTT.aUp[BufferIndex];
  
  
  
  switch (pRing->Flags) {
  case (0U):
    
    
    
    
    Avail = _GetAvailWriteSpace(pRing);
    if (Avail < NumBytes) {
      Status = 0u;
    } else {
      Status = NumBytes;
      _WriteNoCheck(pRing, pData, NumBytes);
    }
    break;
  case (1U):
    
    
    
    Avail = _GetAvailWriteSpace(pRing);
    Status = Avail < NumBytes ? Avail : NumBytes;
    _WriteNoCheck(pRing, pData, Status);
    break;
  case (2U):
    
    
    
    Status = _WriteBlocking(pRing, pData, NumBytes);
    break;
  default:
    Status = 0u;
    break;
  }
  
  
  
  return Status;
}



















 
unsigned SEGGER_RTT_Write(unsigned BufferIndex, const void* pBuffer, unsigned NumBytes) {
  unsigned Status;
  
  do { if (_SEGGER_RTT . acID[0] == '\0') { _DoInit(); } } while (0);
  ;
  
  
  
  Status = SEGGER_RTT_WriteNoLock(BufferIndex, pBuffer, NumBytes);
  
  
  
  ;
  
  return Status;
}





















 
unsigned SEGGER_RTT_WriteString(unsigned BufferIndex, const char* s) {
  unsigned Len;

  Len = strlen((s));
  return SEGGER_RTT_Write(BufferIndex, s, Len);
}















 
int SEGGER_RTT_GetKey(void) {
  char c;
  int r;

  r = (int)SEGGER_RTT_Read(0u, &c, 1u);
  if (r == 1) {
    r = (int)(unsigned char)c;
  } else {
    r = -1;
  }
  return r;
}















 
int SEGGER_RTT_WaitKey(void) {
  int r;

  do {
    r = SEGGER_RTT_GetKey();
  } while (r < 0);
  return r;
}














 
int SEGGER_RTT_HasKey(void) {
  unsigned RdOff;
  int r;

  do { if (_SEGGER_RTT . acID[0] == '\0') { _DoInit(); } } while (0);
  RdOff = _SEGGER_RTT.aDown[0].RdOff;
  if (RdOff != _SEGGER_RTT.aDown[0].WrOff) {
    r = 1;
  } else {
    r = 0;
  }
  return r;
}












 
unsigned SEGGER_RTT_HasData(unsigned BufferIndex) {
  SEGGER_RTT_BUFFER_DOWN* pRing;
  unsigned                v;

  pRing = &_SEGGER_RTT.aDown[BufferIndex];
  v = pRing->WrOff;
  return v - pRing->RdOff;
}



















 
int SEGGER_RTT_AllocDownBuffer(const char* sName, void* pBuffer, unsigned BufferSize, unsigned Flags) {
  int BufferIndex;

  do { if (_SEGGER_RTT . acID[0] == '\0') { _DoInit(); } } while (0);
  ;
  BufferIndex = 0;
  do {
    if (_SEGGER_RTT.aDown[BufferIndex].pBuffer == 0) {
      break;
    }
    BufferIndex++;
  } while (BufferIndex < _SEGGER_RTT.MaxNumDownBuffers);
  if (BufferIndex < _SEGGER_RTT.MaxNumDownBuffers) {
    _SEGGER_RTT.aDown[BufferIndex].sName        = sName;
    _SEGGER_RTT.aDown[BufferIndex].pBuffer      = pBuffer;
    _SEGGER_RTT.aDown[BufferIndex].SizeOfBuffer = BufferSize;
    _SEGGER_RTT.aDown[BufferIndex].RdOff        = 0u;
    _SEGGER_RTT.aDown[BufferIndex].WrOff        = 0u;
    _SEGGER_RTT.aDown[BufferIndex].Flags        = Flags;
  } else {
    BufferIndex = -1;
  }
  ;
  return BufferIndex;
}



















 
int SEGGER_RTT_AllocUpBuffer(const char* sName, void* pBuffer, unsigned BufferSize, unsigned Flags) {
  int BufferIndex;

  do { if (_SEGGER_RTT . acID[0] == '\0') { _DoInit(); } } while (0);
  ;
  BufferIndex = 0;
  do {
    if (_SEGGER_RTT.aUp[BufferIndex].pBuffer == 0) {
      break;
    }
    BufferIndex++;
  } while (BufferIndex < _SEGGER_RTT.MaxNumUpBuffers);
  if (BufferIndex < _SEGGER_RTT.MaxNumUpBuffers) {
    _SEGGER_RTT.aUp[BufferIndex].sName        = sName;
    _SEGGER_RTT.aUp[BufferIndex].pBuffer      = pBuffer;
    _SEGGER_RTT.aUp[BufferIndex].SizeOfBuffer = BufferSize;
    _SEGGER_RTT.aUp[BufferIndex].RdOff        = 0u;
    _SEGGER_RTT.aUp[BufferIndex].WrOff        = 0u;
    _SEGGER_RTT.aUp[BufferIndex].Flags        = Flags;
  } else {
    BufferIndex = -1;
  }
  ;
  return BufferIndex;
}




















 
int SEGGER_RTT_ConfigUpBuffer(unsigned BufferIndex, const char* sName, void* pBuffer, unsigned BufferSize, unsigned Flags) {
  int r;

  do { if (_SEGGER_RTT . acID[0] == '\0') { _DoInit(); } } while (0);
  if (BufferIndex < (unsigned)_SEGGER_RTT.MaxNumUpBuffers) {
    ;
    if (BufferIndex > 0u) {
      _SEGGER_RTT.aUp[BufferIndex].sName        = sName;
      _SEGGER_RTT.aUp[BufferIndex].pBuffer      = pBuffer;
      _SEGGER_RTT.aUp[BufferIndex].SizeOfBuffer = BufferSize;
      _SEGGER_RTT.aUp[BufferIndex].RdOff        = 0u;
      _SEGGER_RTT.aUp[BufferIndex].WrOff        = 0u;
    }
    _SEGGER_RTT.aUp[BufferIndex].Flags          = Flags;
    ;
    r =  0;
  } else {
    r = -1;
  }
  return r;
}




















 
int SEGGER_RTT_ConfigDownBuffer(unsigned BufferIndex, const char* sName, void* pBuffer, unsigned BufferSize, unsigned Flags) {
  int r;

  do { if (_SEGGER_RTT . acID[0] == '\0') { _DoInit(); } } while (0);
  if (BufferIndex < (unsigned)_SEGGER_RTT.MaxNumDownBuffers) {
    ;
    if (BufferIndex > 0u) {
      _SEGGER_RTT.aDown[BufferIndex].sName        = sName;
      _SEGGER_RTT.aDown[BufferIndex].pBuffer      = pBuffer;
      _SEGGER_RTT.aDown[BufferIndex].SizeOfBuffer = BufferSize;
      _SEGGER_RTT.aDown[BufferIndex].RdOff        = 0u;
      _SEGGER_RTT.aDown[BufferIndex].WrOff        = 0u;
    }
    _SEGGER_RTT.aDown[BufferIndex].Flags          = Flags;
    ;
    r =  0;
  } else {
    r = -1;
  }
  return r;
}
















 
int SEGGER_RTT_SetNameUpBuffer(unsigned BufferIndex, const char* sName) {
  int r;

  do { if (_SEGGER_RTT . acID[0] == '\0') { _DoInit(); } } while (0);
  if (BufferIndex < (unsigned)_SEGGER_RTT.MaxNumUpBuffers) {
    ;
    _SEGGER_RTT.aUp[BufferIndex].sName = sName;
    ;
    r =  0;
  } else {
    r = -1;
  }
  return r;
}
















 
int SEGGER_RTT_SetNameDownBuffer(unsigned BufferIndex, const char* sName) {
  int r;

  do { if (_SEGGER_RTT . acID[0] == '\0') { _DoInit(); } } while (0);
  if (BufferIndex < (unsigned)_SEGGER_RTT.MaxNumDownBuffers) {
    ;
    _SEGGER_RTT.aDown[BufferIndex].sName = sName;
    ;
    r =  0;
  } else {
    r = -1;
  }
  return r;
}









 
void SEGGER_RTT_Init (void) {
  do { if (_SEGGER_RTT . acID[0] == '\0') { _DoInit(); } } while (0);
}














 
int SEGGER_RTT_SetTerminal (char TerminalId) {
  char                  ac[2];
  SEGGER_RTT_BUFFER_UP* pRing;
  unsigned Avail;
  int r;
  
  do { if (_SEGGER_RTT . acID[0] == '\0') { _DoInit(); } } while (0);
  
  r = 0;
  ac[0] = 0xFFU;
  if ((unsigned char)TerminalId < (unsigned char)sizeof(_aTerminalId)) { 
    ac[1] = _aTerminalId[(unsigned char)TerminalId];
    pRing = &_SEGGER_RTT.aUp[0];    
    ;    
    if ((pRing->Flags & (3U)) == (2U)) {
      _ActiveTerminal = TerminalId;
      _WriteBlocking(pRing, ac, 2u);
    } else {                                                                            
      Avail = _GetAvailWriteSpace(pRing);
      if (Avail >= 2) {
        _ActiveTerminal = TerminalId;    
        _WriteNoCheck(pRing, ac, 2u);
      } else {
        r = -1;
      }
    }
    ;
  } else {
    r = -1;
  }
  return r;
}

















 
int SEGGER_RTT_TerminalOut (char TerminalId, const char* s) {
  int                   Status;
  unsigned              FragLen;
  unsigned              Avail;
  SEGGER_RTT_BUFFER_UP* pRing;
  
  do { if (_SEGGER_RTT . acID[0] == '\0') { _DoInit(); } } while (0);
  
  
  
  if (TerminalId < (char)sizeof(_aTerminalId)) { 
    
    
    
    pRing = &_SEGGER_RTT.aUp[0];
    
    
    
    
    FragLen = strlen(s);
    
    
    
    ;
    Avail = _GetAvailWriteSpace(pRing);
    switch (pRing->Flags & (3U)) {
    case (0U):
      
      
      
      
      if (Avail < (FragLen + 4u)) {
        Status = 0;
      } else {
        _PostTerminalSwitch(pRing, TerminalId);
        Status = (int)_WriteBlocking(pRing, s, FragLen);
        _PostTerminalSwitch(pRing, _ActiveTerminal);
      }
      break;
    case (1U):
      
      
      
      
      
      if (Avail < 4u) {
        Status = -1;
      } else {
        _PostTerminalSwitch(pRing, TerminalId);
        Status = (int)_WriteBlocking(pRing, s, (FragLen < (Avail - 4u)) ? FragLen : (Avail - 4u));
        _PostTerminalSwitch(pRing, _ActiveTerminal);
      }
      break;
    case (2U):
      
      
      
      _PostTerminalSwitch(pRing, TerminalId);
      Status = (int)_WriteBlocking(pRing, s, FragLen);
      _PostTerminalSwitch(pRing, _ActiveTerminal);
      break;
    default:
      Status = -1;
      break;
    }
    
    
    
    ;
  } else {
    Status = -1;
  }
  return Status;
}


 
