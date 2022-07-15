
#ifndef OV5640_INIT_H_
#define OV5640_INIT_H_


int ov5640_init2(u16 cmos_h_pixel, u16 cmos_v_pixel, u16 *ptr_total_v_std);
int cmos_set_exposure2(unsigned exposure);
int cmos_set_gain2(unsigned gain);


#endif /* OV5640_INIT_H_ */
