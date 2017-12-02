.class Landroid/service/dreams/DreamService$DreamServiceWrapper$1;
.super Ljava/lang/Object;
.source "DreamService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/service/dreams/DreamService$DreamServiceWrapper;->attach(Landroid/os/IBinder;ZLandroid/os/IRemoteCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Landroid/service/dreams/DreamService$DreamServiceWrapper;

.field final synthetic val$canDoze:Z

.field final synthetic val$started:Landroid/os/IRemoteCallback;

.field final synthetic val$windowToken:Landroid/os/IBinder;


# direct methods
.method constructor <init>(Landroid/service/dreams/DreamService$DreamServiceWrapper;Landroid/os/IBinder;ZLandroid/os/IRemoteCallback;)V
    .locals 0
    .param p1, "this$1"    # Landroid/service/dreams/DreamService$DreamServiceWrapper;
    .param p2, "val$windowToken"    # Landroid/os/IBinder;
    .param p3, "val$canDoze"    # Z
    .param p4, "val$started"    # Landroid/os/IRemoteCallback;

    .prologue
    .line 1107
    iput-object p1, p0, Landroid/service/dreams/DreamService$DreamServiceWrapper$1;->this$1:Landroid/service/dreams/DreamService$DreamServiceWrapper;

    iput-object p2, p0, Landroid/service/dreams/DreamService$DreamServiceWrapper$1;->val$windowToken:Landroid/os/IBinder;

    iput-boolean p3, p0, Landroid/service/dreams/DreamService$DreamServiceWrapper$1;->val$canDoze:Z

    iput-object p4, p0, Landroid/service/dreams/DreamService$DreamServiceWrapper$1;->val$started:Landroid/os/IRemoteCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 1110
    iget-object v0, p0, Landroid/service/dreams/DreamService$DreamServiceWrapper$1;->this$1:Landroid/service/dreams/DreamService$DreamServiceWrapper;

    iget-object v0, v0, Landroid/service/dreams/DreamService$DreamServiceWrapper;->this$0:Landroid/service/dreams/DreamService;

    iget-object v1, p0, Landroid/service/dreams/DreamService$DreamServiceWrapper$1;->val$windowToken:Landroid/os/IBinder;

    iget-boolean v2, p0, Landroid/service/dreams/DreamService$DreamServiceWrapper$1;->val$canDoze:Z

    iget-object v3, p0, Landroid/service/dreams/DreamService$DreamServiceWrapper$1;->val$started:Landroid/os/IRemoteCallback;

    invoke-static {v0, v1, v2, v3}, Landroid/service/dreams/DreamService;->-wrap0(Landroid/service/dreams/DreamService;Landroid/os/IBinder;ZLandroid/os/IRemoteCallback;)V

    .line 1109
    return-void
.end method
