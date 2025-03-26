-- CreateTable
CREATE TABLE "todo" (
    "id" SERIAL NOT NULL,
    "title" TEXT NOT NULL,
    "contents" TEXT NOT NULL,
    "created_at" TIMESTAMP(3) NOT NULL DEFAULT CURRENT_TIMESTAMP,
    "updated_at" TIMESTAMP(3) NOT NULL DEFAULT CURRENT_TIMESTAMP,

    CONSTRAINT "todo_pkey" PRIMARY KEY ("id")
);
