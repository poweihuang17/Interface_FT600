* Arbiter design
* I/O, type and parameters


| name                   | type           | width                                 |description                            | connect to                                 |
| :---                   | :--:           | :--:                                  | :---                                  | :---  
| ptr_width_lp           | param          | ?                                     | ?
| els_p                  | param          | ?                                      |FIFO depth 
| clk_i                  | I              | 1                                       |clk
| reset_i                | I              | 1                                      |reset : active ? 
| asic_fifo_ready_i      | I              | 8                                     |FIFO space available and will accept data if v_i is true. A bit for each FIFO. Totally 4 in and 4 out. | ready_o from bsg_fifo_1r1w_small
| asic_fifo_v_i                  | I              | 8                         |FIFO data available and if yumi_i is asserted, data will be removed from the fifo. | v_o from bsg_fifo_1r1w_small
| wptr_r_o               | O              | ?                          |
| rptr_r_o               | O              | ?                            |
| full_o                 | O              | ?                        |                     
| empty_o                | O              | ?                        |   
