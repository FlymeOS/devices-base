.class final Lcom/android/server/am/ActivityManagerService$MemItem;
.super Ljava/lang/Object;
.source "ActivityManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/ActivityManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "MemItem"
.end annotation


# instance fields
.field final hasActivities:Z

.field final id:I

.field final isProc:Z

.field final label:Ljava/lang/String;

.field final pss:J

.field final shortLabel:Ljava/lang/String;

.field subitems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/am/ActivityManagerService$MemItem;",
            ">;"
        }
    .end annotation
.end field

.field final swapPss:J


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;JJI)V
    .locals 1
    .param p1, "_label"    # Ljava/lang/String;
    .param p2, "_shortLabel"    # Ljava/lang/String;
    .param p3, "_pss"    # J
    .param p5, "_swapPss"    # J
    .param p7, "_id"    # I

    .prologue
    const/4 v0, 0x0

    .line 15882
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15883
    iput-boolean v0, p0, Lcom/android/server/am/ActivityManagerService$MemItem;->isProc:Z

    .line 15884
    iput-object p1, p0, Lcom/android/server/am/ActivityManagerService$MemItem;->label:Ljava/lang/String;

    .line 15885
    iput-object p2, p0, Lcom/android/server/am/ActivityManagerService$MemItem;->shortLabel:Ljava/lang/String;

    .line 15886
    iput-wide p3, p0, Lcom/android/server/am/ActivityManagerService$MemItem;->pss:J

    .line 15887
    iput-wide p5, p0, Lcom/android/server/am/ActivityManagerService$MemItem;->swapPss:J

    .line 15888
    iput p7, p0, Lcom/android/server/am/ActivityManagerService$MemItem;->id:I

    .line 15889
    iput-boolean v0, p0, Lcom/android/server/am/ActivityManagerService$MemItem;->hasActivities:Z

    .line 15882
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;JJIZ)V
    .locals 1
    .param p1, "_label"    # Ljava/lang/String;
    .param p2, "_shortLabel"    # Ljava/lang/String;
    .param p3, "_pss"    # J
    .param p5, "_swapPss"    # J
    .param p7, "_id"    # I
    .param p8, "_hasActivities"    # Z

    .prologue
    .line 15871
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15873
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/am/ActivityManagerService$MemItem;->isProc:Z

    .line 15874
    iput-object p1, p0, Lcom/android/server/am/ActivityManagerService$MemItem;->label:Ljava/lang/String;

    .line 15875
    iput-object p2, p0, Lcom/android/server/am/ActivityManagerService$MemItem;->shortLabel:Ljava/lang/String;

    .line 15876
    iput-wide p3, p0, Lcom/android/server/am/ActivityManagerService$MemItem;->pss:J

    .line 15877
    iput-wide p5, p0, Lcom/android/server/am/ActivityManagerService$MemItem;->swapPss:J

    .line 15878
    iput p7, p0, Lcom/android/server/am/ActivityManagerService$MemItem;->id:I

    .line 15879
    iput-boolean p8, p0, Lcom/android/server/am/ActivityManagerService$MemItem;->hasActivities:Z

    .line 15872
    return-void
.end method
