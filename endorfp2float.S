	.arch armv6
	.cpu cortex-a53
	.equ 	NUL, 0

	.global endorFP2float
 	// !!! SET FP_OFFSET TO THE NUMBER OF (SAVED REGISTERS -1 * 4)
	.equ 	FP_OFFSET, 16 		// (# of saved regs - 1) * 4

endorFP2float:
	// PROLOG (DO NOT TOUCH!!!)

	push    {r4-r6, fp, lr}   	// SAVED REGISTERS (any of r4-r10, r12, fp, lr)
                              // SAVE AT LEAST FP AND LR
	add  	fp, sp, #FP_OFFSET  	// .

  // ==========================================================================
  // YOUR CODE GOES IN THE SECTION BELOW
  // ==========================================================================
  // R0 holds the result





  // ==========================================================================

	// EPILOG (DO NOT TOUCH!!!)
	sub	sp, fp, #FP_OFFSET
	pop     {r4-r6, fp, lr}   	// MUST MATCH LIST IN PROLOG'S PUSH
	bx 	lr                      // return


	.global zeroEndorFP2float
	.equ 	FP_OFFSET, 4  		//  (# of saved regs -1) * 4

zeroEndorFP2float:
  // PROLOG (DO NOT TOUCH!!!)
  push    {fp, lr}   		// save regs
	add	fp, sp, #FP_OFFSET

  // ==========================================================================
  // YOUR CODE GOES IN THE SECTION BELOW
  // ==========================================================================
	// R0 holds the Result





  // ==========================================================================

	// EPILOG (DO NOT TOUCH!!!)
	sub	sp, fp, #FP_OFFSET
	pop     {fp, lr}   		// restore regs
	bx 	lr                      // return
