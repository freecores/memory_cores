-------------------------------------------------------------------------------
-- Title      : Memory Package
-- Project    : Memory Cores
-------------------------------------------------------------------------------
-- File        : MEMPKG.VHD
-- Author      : Jamil Khatib  <khatib@ieee.org>
-- Organization: OpenIPCore Project
-- Created     : 2000/02/29
-- Last update : 2000/02/29
-- Platform    : 
-- Simulators  : Modelsim 5.2EE / Windows98
-- Synthesizers: Leonardo / WindowsNT
-- Target      : Flex10K
-------------------------------------------------------------------------------
-- Description: Memory Package
-------------------------------------------------------------------------------
-- Copyright (c) 2000 Jamil Khatib
-- 
-- This VHDL design file is an open design; you can redistribute it and/or
-- modify it and/or implement it under the terms of the Openip General Public
-- License as it is going to be published by the OpenIPCore Organization and
-- any coming versions of this license.
-- You can check the draft license at
-- http://www.openip.org/oc/license.html

-------------------------------------------------------------------------------
-- Revisions  :
-- Revision Number : 1
-- Version		:   0.1
-- Date 	    :	29th Feb 2000
-- Modifier     :   Jamil Khatib (khatib@ieee.org)
-- Desccription :	Created
--
-------------------------------------------------------------------------------

library ieee;
use ieee.std_logic_1164.all;

package mempkg is

  function slv_2_int (
    SLV :std_logic_vector )
    return integer;
  

end mempkg;

-------------------------------------------------------------------------------

package body mempkg is

-------------------------------------------------------------------------------
  function slv_2_int (
    SLV : std_logic_vector)    -- std_logic_vector to convert
    return integer IS

    variable Result : integer  := 0;  -- conversion result
    
  begin
    for i in SLV'RANGE loop
       Result := Result * 2;            -- shift the variable to left
      case SLV(i) is
        when '1' | 'H'  => Result := Result + 1 ;
        when '0' | 'L'  => Result := Result + 0;
        when others => null;
      end case;
    end loop;

    return Result;
  end;
-------------------------------------------------------------------------------
  
end mempkg;

-------------------------------------------------------------------------------