import { Input, type InputProps } from "@/app/_components/ui/input";

import { NumericFormat, type NumericFormatProps } from "react-number-format";

import { type ForwardedRef, forwardRef } from "react";

export const MoneyInput = forwardRef(
  (
    props: NumericFormatProps<InputProps>,
    ref: ForwardedRef<HTMLInputElement>,
  ) => {
    return (
      <NumericFormat
        {...props}
        thousandSeparator="."
        decimalSeparator=","
        prefix="R$ "
        allowNegative={false}
        customInput={Input}
        getInputRef={ref}
      />
    );
  },
);

MoneyInput.displayName = "MoneyInput";
