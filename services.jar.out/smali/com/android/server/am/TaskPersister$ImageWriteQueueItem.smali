.class Lcom/android/server/am/TaskPersister$ImageWriteQueueItem;
.super Lcom/android/server/am/TaskPersister$WriteQueueItem;
.source "TaskPersister.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/TaskPersister;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ImageWriteQueueItem"
.end annotation


# instance fields
.field final mFilePath:Ljava/lang/String;

.field mImage:Landroid/graphics/Bitmap;


# direct methods
.method constructor <init>(Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 1
    .param p1, "filePath"    # Ljava/lang/String;
    .param p2, "image"    # Landroid/graphics/Bitmap;

    .prologue
    .line 118
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/server/am/TaskPersister$WriteQueueItem;-><init>(Lcom/android/server/am/TaskPersister$WriteQueueItem;)V

    .line 119
    iput-object p1, p0, Lcom/android/server/am/TaskPersister$ImageWriteQueueItem;->mFilePath:Ljava/lang/String;

    .line 120
    iput-object p2, p0, Lcom/android/server/am/TaskPersister$ImageWriteQueueItem;->mImage:Landroid/graphics/Bitmap;

    .line 118
    return-void
.end method
