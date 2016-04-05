#line 1 "..\\SEGGER_RTT_printf.c"


















































 
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




 
#line 53 "..\\SEGGER_RTT_printf.c"
#line 54 "..\\SEGGER_RTT_printf.c"






 





#line 1 "F:\\Program Files\\Keil5\\ARM\\ARMCC\\Bin\\..\\include\\stdlib.h"
 
 
 




 
 



 






   














  


 








#line 54 "F:\\Program Files\\Keil5\\ARM\\ARMCC\\Bin\\..\\include\\stdlib.h"


  



    typedef unsigned int size_t;    
#line 70 "F:\\Program Files\\Keil5\\ARM\\ARMCC\\Bin\\..\\include\\stdlib.h"






    



    typedef unsigned short wchar_t;  
#line 91 "F:\\Program Files\\Keil5\\ARM\\ARMCC\\Bin\\..\\include\\stdlib.h"

typedef struct div_t { int quot, rem; } div_t;
    
typedef struct ldiv_t { long int quot, rem; } ldiv_t;
    

typedef struct lldiv_t { long long quot, rem; } lldiv_t;
    


#line 112 "F:\\Program Files\\Keil5\\ARM\\ARMCC\\Bin\\..\\include\\stdlib.h"
   



 

   




 
#line 131 "F:\\Program Files\\Keil5\\ARM\\ARMCC\\Bin\\..\\include\\stdlib.h"
   


 
extern __declspec(__nothrow) int __aeabi_MB_CUR_MAX(void);

   




 

   




 




extern __declspec(__nothrow) double atof(const char *  ) __attribute__((__nonnull__(1)));
   



 
extern __declspec(__nothrow) int atoi(const char *  ) __attribute__((__nonnull__(1)));
   



 
extern __declspec(__nothrow) long int atol(const char *  ) __attribute__((__nonnull__(1)));
   



 

extern __declspec(__nothrow) long long atoll(const char *  ) __attribute__((__nonnull__(1)));
   



 


extern __declspec(__nothrow) double strtod(const char * __restrict  , char ** __restrict  ) __attribute__((__nonnull__(1)));
   

















 

extern __declspec(__nothrow) float strtof(const char * __restrict  , char ** __restrict  ) __attribute__((__nonnull__(1)));
extern __declspec(__nothrow) long double strtold(const char * __restrict  , char ** __restrict  ) __attribute__((__nonnull__(1)));
   

 

extern __declspec(__nothrow) long int strtol(const char * __restrict  ,
                        char ** __restrict  , int  ) __attribute__((__nonnull__(1)));
   



























 
extern __declspec(__nothrow) unsigned long int strtoul(const char * __restrict  ,
                                       char ** __restrict  , int  ) __attribute__((__nonnull__(1)));
   


























 

 
extern __declspec(__nothrow) long long strtoll(const char * __restrict  ,
                                  char ** __restrict  , int  )
                          __attribute__((__nonnull__(1)));
   




 
extern __declspec(__nothrow) unsigned long long strtoull(const char * __restrict  ,
                                            char ** __restrict  , int  )
                                   __attribute__((__nonnull__(1)));
   



 

extern __declspec(__nothrow) int rand(void);
   







 
extern __declspec(__nothrow) void srand(unsigned int  );
   






 

struct _rand_state { int __x[57]; };
extern __declspec(__nothrow) int _rand_r(struct _rand_state *);
extern __declspec(__nothrow) void _srand_r(struct _rand_state *, unsigned int);
struct _ANSI_rand_state { int __x[1]; };
extern __declspec(__nothrow) int _ANSI_rand_r(struct _ANSI_rand_state *);
extern __declspec(__nothrow) void _ANSI_srand_r(struct _ANSI_rand_state *, unsigned int);
   


 

extern __declspec(__nothrow) void *calloc(size_t  , size_t  );
   



 
extern __declspec(__nothrow) void free(void *  );
   





 
extern __declspec(__nothrow) void *malloc(size_t  );
   



 
extern __declspec(__nothrow) void *realloc(void *  , size_t  );
   













 

extern __declspec(__nothrow) int posix_memalign(void **  , size_t  , size_t  );
   









 

typedef int (*__heapprt)(void *, char const *, ...);
extern __declspec(__nothrow) void __heapstats(int (*  )(void *  ,
                                           char const *  , ...),
                        void *  ) __attribute__((__nonnull__(1)));
   










 
extern __declspec(__nothrow) int __heapvalid(int (*  )(void *  ,
                                           char const *  , ...),
                       void *  , int  ) __attribute__((__nonnull__(1)));
   














 
extern __declspec(__nothrow) __declspec(__noreturn) void abort(void);
   







 

extern __declspec(__nothrow) int atexit(void (*  )(void)) __attribute__((__nonnull__(1)));
   




 
#line 436 "F:\\Program Files\\Keil5\\ARM\\ARMCC\\Bin\\..\\include\\stdlib.h"


extern __declspec(__nothrow) __declspec(__noreturn) void exit(int  );
   












 

extern __declspec(__nothrow) __declspec(__noreturn) void _Exit(int  );
   







      

extern __declspec(__nothrow) char *getenv(const char *  ) __attribute__((__nonnull__(1)));
   









 

extern __declspec(__nothrow) int  system(const char *  );
   









 

extern  void *bsearch(const void *  , const void *  ,
              size_t  , size_t  ,
              int (*  )(const void *, const void *)) __attribute__((__nonnull__(1,2,5)));
   












 
#line 524 "F:\\Program Files\\Keil5\\ARM\\ARMCC\\Bin\\..\\include\\stdlib.h"


extern  void qsort(void *  , size_t  , size_t  ,
           int (*  )(const void *, const void *)) __attribute__((__nonnull__(1,4)));
   









 

#line 553 "F:\\Program Files\\Keil5\\ARM\\ARMCC\\Bin\\..\\include\\stdlib.h"

extern __declspec(__nothrow) __attribute__((const)) int abs(int  );
   



 

extern __declspec(__nothrow) __attribute__((const)) div_t div(int  , int  );
   









 
extern __declspec(__nothrow) __attribute__((const)) long int labs(long int  );
   



 




extern __declspec(__nothrow) __attribute__((const)) ldiv_t ldiv(long int  , long int  );
   











 







extern __declspec(__nothrow) __attribute__((const)) long long llabs(long long  );
   



 




extern __declspec(__nothrow) __attribute__((const)) lldiv_t lldiv(long long  , long long  );
   











 
#line 634 "F:\\Program Files\\Keil5\\ARM\\ARMCC\\Bin\\..\\include\\stdlib.h"




 
typedef struct __sdiv32by16 { int quot, rem; } __sdiv32by16;
typedef struct __udiv32by16 { unsigned int quot, rem; } __udiv32by16;
    
typedef struct __sdiv64by32 { int rem, quot; } __sdiv64by32;

__value_in_regs extern __declspec(__nothrow) __attribute__((const)) __sdiv32by16 __rt_sdiv32by16(
     int  ,
     short int  );
   

 
__value_in_regs extern __declspec(__nothrow) __attribute__((const)) __udiv32by16 __rt_udiv32by16(
     unsigned int  ,
     unsigned short  );
   

 
__value_in_regs extern __declspec(__nothrow) __attribute__((const)) __sdiv64by32 __rt_sdiv64by32(
     int  , unsigned int  ,
     int  );
   

 




 
extern __declspec(__nothrow) unsigned int __fp_status(unsigned int  , unsigned int  );
   







 























 
extern __declspec(__nothrow) int mblen(const char *  , size_t  );
   












 
extern __declspec(__nothrow) int mbtowc(wchar_t * __restrict  ,
                   const char * __restrict  , size_t  );
   















 
extern __declspec(__nothrow) int wctomb(char *  , wchar_t  );
   













 





 
extern __declspec(__nothrow) size_t mbstowcs(wchar_t * __restrict  ,
                      const char * __restrict  , size_t  ) __attribute__((__nonnull__(2)));
   














 
extern __declspec(__nothrow) size_t wcstombs(char * __restrict  ,
                      const wchar_t * __restrict  , size_t  ) __attribute__((__nonnull__(2)));
   














 

extern __declspec(__nothrow) void __use_realtime_heap(void);
extern __declspec(__nothrow) void __use_realtime_division(void);
extern __declspec(__nothrow) void __use_two_region_memory(void);
extern __declspec(__nothrow) void __use_no_heap(void);
extern __declspec(__nothrow) void __use_no_heap_region(void);

extern __declspec(__nothrow) char const *__C_library_version_string(void);
extern __declspec(__nothrow) int __C_library_version_number(void);











#line 892 "F:\\Program Files\\Keil5\\ARM\\ARMCC\\Bin\\..\\include\\stdlib.h"





 
#line 67 "..\\SEGGER_RTT_printf.c"
#line 1 "F:\\Program Files\\Keil5\\ARM\\ARMCC\\Bin\\..\\include\\stdarg.h"
 
 
 





 










#line 27 "F:\\Program Files\\Keil5\\ARM\\ARMCC\\Bin\\..\\include\\stdarg.h"








 

 
 
#line 57 "F:\\Program Files\\Keil5\\ARM\\ARMCC\\Bin\\..\\include\\stdarg.h"
    typedef struct __va_list { void *__ap; } va_list;

   






 


   










 


   















 




   

 


   




 



   





 







#line 138 "F:\\Program Files\\Keil5\\ARM\\ARMCC\\Bin\\..\\include\\stdarg.h"



#line 147 "F:\\Program Files\\Keil5\\ARM\\ARMCC\\Bin\\..\\include\\stdarg.h"

 

#line 68 "..\\SEGGER_RTT_printf.c"












 

typedef struct {
  char*     pBuffer;
  unsigned  BufferSize;
  unsigned  Cnt;

  int   ReturnValue;

  unsigned RTTBufferIndex;
} SEGGER_RTT_PRINTF_DESC;






 
int SEGGER_RTT_vprintf(unsigned BufferIndex, const char * sFormat, va_list * pParamList);






 



 
static void _StoreChar(SEGGER_RTT_PRINTF_DESC * p, char c) {
  unsigned Cnt;

  Cnt = p->Cnt;
  if ((Cnt + 1u) <= p->BufferSize) {
    *(p->pBuffer + Cnt) = c;
    p->Cnt = Cnt + 1u;
    p->ReturnValue++;
  }
  
  
  
  if (p->Cnt == p->BufferSize) {
    if (SEGGER_RTT_Write(p->RTTBufferIndex, p->pBuffer, p->Cnt) != p->Cnt) {
      p->ReturnValue = -1;
    } else {
      p->Cnt = 0u;
    }
  }
}




 
static void _PrintUnsigned(SEGGER_RTT_PRINTF_DESC * pBufferDesc, unsigned v, unsigned Base, unsigned NumDigits, unsigned FieldWidth, unsigned FormatFlags) {
  static const char _aV2C[16] = {'0', '1', '2', '3', '4', '5', '6', '7', '8', '9', 'A', 'B', 'C', 'D', 'E', 'F' };
  unsigned Div;
  unsigned Digit;
  unsigned Number;
  unsigned Width;
  char c;

  Number = v;
  Digit = 1u;
  
  
  
  Width = 1u;
  while (Number >= Base) {
    Number = (Number / Base);
    Width++;
  }
  if (NumDigits > Width) {
    Width = NumDigits;
  }
  
  
  
  if ((FormatFlags & (1u << 0)) == 0u) {
    if (FieldWidth != 0u) {
      if (((FormatFlags & (1u << 1)) == (1u << 1)) && (NumDigits == 0u)) {
        c = '0';
      } else {
        c = ' ';
      }
      while ((FieldWidth != 0u) && (Width < FieldWidth)) {
        FieldWidth--;
        _StoreChar(pBufferDesc, c);
        if (pBufferDesc->ReturnValue < 0) {
          break;
        }
      }
    }
  }
  if (pBufferDesc->ReturnValue >= 0) {
    
    
    
    
    
    while (1) {
      if (NumDigits > 1u) {       
        NumDigits--;
      } else {
        Div = v / Digit;
        if (Div < Base) {        
          break;
        }
      }
      Digit *= Base;
    }
    
    
    
    do {
      Div = v / Digit;
      v -= Div * Digit;
      _StoreChar(pBufferDesc, _aV2C[Div]);
      if (pBufferDesc->ReturnValue < 0) {
        break;
      }
      Digit /= Base;
    } while (Digit);
    
    
    
    if ((FormatFlags & (1u << 0)) == (1u << 0)) {
      if (FieldWidth != 0u) {
        while ((FieldWidth != 0u) && (Width < FieldWidth)) {
          FieldWidth--;
          _StoreChar(pBufferDesc, ' ');
          if (pBufferDesc->ReturnValue < 0) {
            break;
          }
        }
      }
    }
  }
}




 
static void _PrintInt(SEGGER_RTT_PRINTF_DESC * pBufferDesc, int v, unsigned Base, unsigned NumDigits, unsigned FieldWidth, unsigned FormatFlags) {
  unsigned Width;
  int Number;

  Number = (v < 0) ? -v : v;

  
  
  
  Width = 1u;
  while (Number >= (int)Base) {
    Number = (Number / (int)Base);
    Width++;
  }
  if (NumDigits > Width) {
    Width = NumDigits;
  }
  if ((FieldWidth > 0u) && ((v < 0) || ((FormatFlags & (1u << 2)) == (1u << 2)))) {
    FieldWidth--;
  }

  
  
  
  if ((((FormatFlags & (1u << 1)) == 0u) || (NumDigits != 0u)) && ((FormatFlags & (1u << 0)) == 0u)) {
    if (FieldWidth != 0u) {
      while ((FieldWidth != 0u) && (Width < FieldWidth)) {
        FieldWidth--;
        _StoreChar(pBufferDesc, ' ');
        if (pBufferDesc->ReturnValue < 0) {
          break;
        }
      }
    }
  }
  
  
  
  if (pBufferDesc->ReturnValue >= 0) {
    if (v < 0) {
      v = -v;
      _StoreChar(pBufferDesc, '-');
    } else if ((FormatFlags & (1u << 2)) == (1u << 2)) {
      _StoreChar(pBufferDesc, '+');
    } else {

    }
    if (pBufferDesc->ReturnValue >= 0) {
      
      
      
      if (((FormatFlags & (1u << 1)) == (1u << 1)) && ((FormatFlags & (1u << 0)) == 0u) && (NumDigits == 0u)) {
        if (FieldWidth != 0u) {
          while ((FieldWidth != 0u) && (Width < FieldWidth)) {
            FieldWidth--;
            _StoreChar(pBufferDesc, '0');
            if (pBufferDesc->ReturnValue < 0) {
              break;
            }
          }
        }
      }
      if (pBufferDesc->ReturnValue >= 0) {
        
        
        
        _PrintUnsigned(pBufferDesc, (unsigned)v, Base, NumDigits, FieldWidth, FormatFlags);
      }
    }
  }
}






 
















 
int SEGGER_RTT_vprintf(unsigned BufferIndex, const char * sFormat, va_list * pParamList) {
  char c;
  SEGGER_RTT_PRINTF_DESC BufferDesc;
  int v;
  unsigned NumDigits;
  unsigned FormatFlags;
  unsigned FieldWidth;
  char acBuffer[(64u)];

  BufferDesc.pBuffer        = acBuffer;
  BufferDesc.BufferSize     = (64u);
  BufferDesc.Cnt            = 0u;
  BufferDesc.RTTBufferIndex = BufferIndex;
  BufferDesc.ReturnValue    = 0;

  do {
    c = *sFormat;
    sFormat++;
    if (c == 0u) {
      break;
    }
    if (c == '%') {
      
      
      
      FormatFlags = 0u;
      v = 1;
      do {
        c = *sFormat;
        switch (c) {
        case '-': FormatFlags |= (1u << 0); sFormat++; break;
        case '0': FormatFlags |= (1u << 1);     sFormat++; break;
        case '+': FormatFlags |= (1u << 2);   sFormat++; break;
        case '#': FormatFlags |= (1u << 3);    sFormat++; break;
        default:  v = 0; break;
        }
      } while (v);
      
      
      
      FieldWidth = 0u;
      do {
        c = *sFormat;
        if ((c < '0') || (c > '9')) {
          break;
        }
        sFormat++;
        FieldWidth = (FieldWidth * 10u) + ((unsigned)c - '0');
      } while (1);

      
      
      
      NumDigits = 0u;
      c = *sFormat;
      if (c == '.') {
        sFormat++;
        do {
          c = *sFormat;
          if ((c < '0') || (c > '9')) {
            break;
          }
          sFormat++;
          NumDigits = NumDigits * 10u + ((unsigned)c - '0');
        } while (1);
      }
      
      
      
      c = *sFormat;
      do {
        if ((c == 'l') || (c == 'h')) {
          c = *sFormat;
          sFormat++;
        } else {
          break;
        }
      } while (1);
      
      
      
      switch (c) {
      case 'c': {
        char c0;
        v = __va_arg(*pParamList, int);
        c0 = (char)v;
        _StoreChar(&BufferDesc, c0);
        break;
      }
      case 'd':
        v = __va_arg(*pParamList, int);
        _PrintInt(&BufferDesc, v, 10u, NumDigits, FieldWidth, FormatFlags);
        break;
      case 'u':
        v = __va_arg(*pParamList, int);
        _PrintUnsigned(&BufferDesc, (unsigned)v, 10u, NumDigits, FieldWidth, FormatFlags);
        break;
      case 'x':
      case 'X':
        v = __va_arg(*pParamList, int);
        _PrintUnsigned(&BufferDesc, (unsigned)v, 16u, NumDigits, FieldWidth, FormatFlags);
        break;
      case 's':
        {
          const char * s = __va_arg(*pParamList, const char *);
          do {
            c = *s;
            s++;
            if (c == '\0') {
              break;
            }
           _StoreChar(&BufferDesc, c);
          } while (BufferDesc.ReturnValue >= 0);
        }
        break;
      case 'p':
        v = __va_arg(*pParamList, int);
        _PrintUnsigned(&BufferDesc, (unsigned)v, 16u, 8u, 8u, 0u);
        break;
      case '%':
        _StoreChar(&BufferDesc, '%');
        break;
      default:
        break;
      }
      sFormat++;
    } else {
      _StoreChar(&BufferDesc, c);
    }
  } while (BufferDesc.ReturnValue >= 0);

  if (BufferDesc.ReturnValue > 0) {
    
    
    
    if (BufferDesc.Cnt != 0u) {
      SEGGER_RTT_Write(BufferIndex, acBuffer, BufferDesc.Cnt);
    }
    BufferDesc.ReturnValue += (int)BufferDesc.Cnt;
  }
  return BufferDesc.ReturnValue;
}































 
int SEGGER_RTT_printf(unsigned BufferIndex, const char * sFormat, ...) {
  va_list ParamList;

  __va_start(ParamList, sFormat);
  return SEGGER_RTT_vprintf(BufferIndex, sFormat, &ParamList);
}
 
