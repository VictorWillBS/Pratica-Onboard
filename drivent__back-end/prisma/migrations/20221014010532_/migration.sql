/*
  Warnings:

  - A unique constraint covering the columns `[enrollmentId,number,addressDetail]` on the table `Address` will be added. If there are existing duplicate values, this will fail.

*/
-- DropIndex
DROP INDEX "Address_enrollmentId_cep_key";

-- CreateIndex
CREATE UNIQUE INDEX "Address_enrollmentId_number_addressDetail_key" ON "Address"("enrollmentId", "number", "addressDetail");
