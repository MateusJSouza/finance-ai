/*
  Warnings:

  - You are about to drop the column `paymenthMethod` on the `Transaction` table. All the data in the column will be lost.
  - Added the required column `paymentMethod` to the `Transaction` table without a default value. This is not possible if the table is not empty.

*/
-- CreateEnum
CREATE TYPE "TransactionPaymentMethod" AS ENUM ('CREDIT_CARD', 'DEBIT_CARD', 'BANK_TRANSFER', 'BANK_SLIP', 'CASH', 'PIX', 'OTHER');

-- AlterEnum
ALTER TYPE "TransactionCategory" ADD VALUE 'HEALTH';

-- AlterTable
ALTER TABLE "Transaction" DROP COLUMN "paymenthMethod",
ADD COLUMN     "paymentMethod" "TransactionPaymentMethod" NOT NULL;

-- DropEnum
DROP TYPE "TransactionPaymenthMethod";
