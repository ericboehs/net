#include "net.h"

VALUE rb_mNet;

void
Init_net(void)
{
  rb_mNet = rb_define_module("Net");
}
