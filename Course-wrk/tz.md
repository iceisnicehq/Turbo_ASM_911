Написать программу декодирования машинных кодов заданных команд в команды ассемблера:
`BTC
Jcc
AAD`
![image](https://github.com/user-attachments/assets/e811c8e0-2946-4ad3-931d-80b790eecf9a)
![image](https://github.com/user-attachments/assets/3110b629-54cf-4240-8f06-51d5dd58f4f2)
![image](https://github.com/user-attachments/assets/7dc7115e-f750-4429-b471-b5a6121353d4)
![image](https://github.com/user-attachments/assets/ad198bdd-ca86-430e-ae04-62e8ad250e67)
![image](https://github.com/user-attachments/assets/684348c2-2b63-4b4a-92b7-4f6d580f1211)

instruction format

![image](https://github.com/user-attachments/assets/9b4afbd9-68c0-4626-b574-b2a6901e22e3)

inst pref(1) | opcode(1-3) | modR/M(1) | SIB(1) | disp(1-4) | immediate(1-4)

modR/M = mod(76) | reg/opcode(543) | R/M (210)
SIB = scale(76) | index(543) | base(210)

PREFIX:
1) SEG_OVR 
  1) 2E = CS:
  2) 36 = SS:
  3) 3E = DS:
  4) 26 = ES:
  5) 64 = FS
  6) 65 = GS
+JCC
  7) 2E = Branch no taken
  8) 3E = Branch taken
2) SIZE_OVR
  1) 66 = 32bit regs
3) ADDR_OVR
  1) 67 = ADDR_OVR
4) LOCK_OVR
  1) F0 = LOCK prefix (GOES BEFORE) SEG_OVR

![image](https://github.com/user-attachments/assets/d09a9177-34f7-4b31-8bf2-09a5e88320b5)
![image](https://github.com/user-attachments/assets/ac2748b6-b645-4e89-be97-a4913260534e)

`0F is used for two byte inst` 

![image](https://github.com/user-attachments/assets/4533cfc4-b00a-4738-a1dc-188d0f341a2f)
![image](https://github.com/user-attachments/assets/cbb8e3be-b769-4738-ab22-d763df8ada93)
![image](https://github.com/user-attachments/assets/56d9a3de-91e2-423d-85bb-67f80d2a8e70)


IDEA:
To use the instruction list while skipping instructions which are not part of my ins set.
eg
ins <aad>
ins<unk>
...
ins<jc>
THUS single byte instructions are one list but if an `0F` is encountered it is another list of instructions(ext)
