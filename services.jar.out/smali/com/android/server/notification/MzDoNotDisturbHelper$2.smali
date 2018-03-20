.class Lcom/android/server/notification/MzDoNotDisturbHelper$2;
.super Ljava/lang/Object;
.source "MzDoNotDisturbHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/notification/MzDoNotDisturbHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/notification/MzDoNotDisturbHelper;


# direct methods
.method constructor <init>(Lcom/android/server/notification/MzDoNotDisturbHelper;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/notification/MzDoNotDisturbHelper;

    .prologue
    .line 144
    iput-object p1, p0, Lcom/android/server/notification/MzDoNotDisturbHelper$2;->this$0:Lcom/android/server/notification/MzDoNotDisturbHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 148
    iget-object v0, p0, Lcom/android/server/notification/MzDoNotDisturbHelper$2;->this$0:Lcom/android/server/notification/MzDoNotDisturbHelper;

    invoke-static {v0}, Lcom/android/server/notification/MzDoNotDisturbHelper;->-wrap2(Lcom/android/server/notification/MzDoNotDisturbHelper;)V

    .line 147
    return-void
.end method
