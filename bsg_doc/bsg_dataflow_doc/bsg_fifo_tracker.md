
* I/O, type and parameters


| name                   | type           | description                           |
| :---                   | :--:           | :---                                  |
| ptr_width_lp           | param          | ?                            |
| els_p                  | param          | FIFO depth                            |
| clk_i                  | I              | clk                                   |
| reset_i                | I              | reset : active ?                      |
| enq_i                  | I              | ?                      |
| deq_i                  | I              | ?                         |
| wptr_r_o               | O              | ?                          |
| rptr_r_o               | O              | ?                            |
| full_o                 | O              | ?                        |                     
| empty_o                | O              | ?                        |   





* Internal signals

| name                   | description          |
| :---                   | :---                 |
| enq_r                  | ?                    |
| deq_r                  | ?                    |
| wptr_r                 | ?                    |
| rpt_r                  | ?                    |
| empty                  | ?                    |
| full                   | ?                    |
| equal_ptrs             | ?                    |

* Structure
** two bsg circular pointer
** and ?

* Input protocol
* Output protocol
