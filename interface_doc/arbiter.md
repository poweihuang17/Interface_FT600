* Arbiter design
* I/O, type and parameters


| name                   | type           | width                                 |description                            | connect to                                 |
| :---                   | :--:           | :--:                                  | :---                                  | :---  
| ptr_width_lp           | param          | ?                                     | ?
| els_p                  | param          | ?                                      |FIFO depth 
| clk_i                  | I              | 1                                       |clk
| reset_i                | I              | 1                                      |reset : active ? 
| asic_space_ready_i      | I              | 8                                     |FIFO space available and will accept data if v_i is true. A bit for each FIFO. Totally 4 in and 4 out. | ready_o from bsg_fifo_1r1w_small
| asic_data_ready_i                  | I              | 8                         |FIFO data available and if yumi_i is asserted, data will be removed from the fifo. | v_o from bsg_fifo_1r1w_small
| ft60x_space_ready_i      | I              | 4                          | ft60x has data in their output FIFO. | DATA[15:12] from FT60x
| ft60x_data_ready_i       | I              | 4                            | ft60x has space in their input FIFO. | DATA[11:8] from FT60x
| channel_select_o                 | O              | 2                        | select which channel in FT60x to use. | DATA[1:0] from FT60x                    
| read_valid_o                | O              | 1                        | ASIC is able to read from FT60x. | WR_N from FT60x
| write_valid_o               | O              | 1                        | ASIC is able to write from FT60x. | ?


* Arbitration Algorithm: WRR + priority generation . Priority: Strict (Channel 1> 2 > 3 > 4 , Empty Read > Full incomming Write > others)
