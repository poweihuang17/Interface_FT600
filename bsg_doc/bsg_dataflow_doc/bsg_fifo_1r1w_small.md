| name                   | type             | direction  | description                           |
| :---                   | :--:             | :--:       | :---                                  |
| width_p                | param            | param      | FIFO width                            |
| els_p                  | param            | param      | FIFO depth                            |
| ready_THEN_valid_p     | param            | param      | ?                                     |
| clk_i                  | I/O              | I          | clk                                   |
| reset_i                | I/O              | I          | reset : active ?                      |
| v_i                    | I/O              | I          | ?                      |
| yumi_i                 | I/O              | I          | ?                         |
| data_i                 | I/O              | I          | FIFO data input                          |
| v_o                    | I/O              | O          | ?                            |
| ready_o                | I/O              | O          | ?                        |                     
| data_o                 | I/O              | O          | FIFO data output                        |                     

* Input protocol:?

* Output protocol:?

* Structure 
<br/>
== bsg_fifo_tracker takes charge of FIFO pointer movement.
<br/>
== bsg_mem_1r1w is responsible for the FIFO data storage itself.
