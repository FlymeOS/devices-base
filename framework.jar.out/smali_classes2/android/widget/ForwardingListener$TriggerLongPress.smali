.class Landroid/widget/ForwardingListener$TriggerLongPress;
.super Ljava/lang/Object;
.source "ForwardingListener.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/ForwardingListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TriggerLongPress"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/widget/ForwardingListener;


# direct methods
.method private constructor <init>(Landroid/widget/ForwardingListener;)V
    .locals 0
    .param p1, "this$0"    # Landroid/widget/ForwardingListener;

    .prologue
    .line 286
    iput-object p1, p0, Landroid/widget/ForwardingListener$TriggerLongPress;->this$0:Landroid/widget/ForwardingListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/widget/ForwardingListener;Landroid/widget/ForwardingListener$TriggerLongPress;)V
    .locals 0
    .param p1, "this$0"    # Landroid/widget/ForwardingListener;

    .prologue
    invoke-direct {p0, p1}, Landroid/widget/ForwardingListener$TriggerLongPress;-><init>(Landroid/widget/ForwardingListener;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 289
    iget-object v0, p0, Landroid/widget/ForwardingListener$TriggerLongPress;->this$0:Landroid/widget/ForwardingListener;

    invoke-static {v0}, Landroid/widget/ForwardingListener;->-wrap0(Landroid/widget/ForwardingListener;)V

    .line 288
    return-void
.end method
