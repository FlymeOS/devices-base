.class Lcom/android/server/PinnerService$PinnedFile;
.super Ljava/lang/Object;
.source "PinnerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/PinnerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "PinnedFile"
.end annotation


# instance fields
.field mAddress:J

.field mFilename:Ljava/lang/String;

.field mLength:J


# direct methods
.method constructor <init>(JJLjava/lang/String;)V
    .locals 1
    .param p1, "address"    # J
    .param p3, "length"    # J
    .param p5, "filename"    # Ljava/lang/String;

    .prologue
    .line 354
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 355
    iput-wide p1, p0, Lcom/android/server/PinnerService$PinnedFile;->mAddress:J

    .line 356
    iput-wide p3, p0, Lcom/android/server/PinnerService$PinnedFile;->mLength:J

    .line 357
    iput-object p5, p0, Lcom/android/server/PinnerService$PinnedFile;->mFilename:Ljava/lang/String;

    .line 354
    return-void
.end method
