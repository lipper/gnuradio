/* -*- c++ -*- */
/*
 * Copyright 2004,2012 Free Software Foundation, Inc.
 *
 * This file is part of GNU Radio
 *
 * GNU Radio is free software; you can redistribute it and/or modify
 * it under the terms of the GNU General Public License as published by
 * the Free Software Foundation; either version 3, or (at your option)
 * any later version.
 *
 * GNU Radio is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 * GNU General Public License for more details.
 *
 * You should have received a copy of the GNU General Public License
 * along with GNU Radio; see the file COPYING.  If not, write to
 * the Free Software Foundation, Inc., 51 Franklin Street,
 * Boston, MA 02110-1301, USA.
 */

/* @WARNING@ */

#ifndef @GUARD_NAME@
#define @GUARD_NAME@

#include <analog/@BASE_NAME@.h>
#include <gr_random.h>

namespace gr {
  namespace analog {

    class @IMPL_NAME@ : public @BASE_NAME@
    {
      noise_type_t d_type;
      float d_ampl;
      gr_random d_rng;

    public:
      @IMPL_NAME@(noise_type_t type, float ampl, long seed = 0);
      ~@IMPL_NAME@();

      void set_type(noise_type_t type) { d_type = type; }
      void set_amplitude(float ampl) { d_ampl = ampl; }

      noise_type_t type() const { return d_type; }
      float amplitude() const { return d_ampl; }

      int work(int noutput_items,
	       gr_vector_const_void_star &input_items,
	       gr_vector_void_star &output_items);
    };

  } /* namespace filter */
} /* namespace gr */

#endif /* @GUARD_NAME@ */
