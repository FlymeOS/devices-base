.class Landroid/app/SharedPreferencesImpl$1;
.super Ljava/lang/Thread;
.source "SharedPreferencesImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/app/SharedPreferencesImpl;->startLoadFromDisk()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/app/SharedPreferencesImpl;


# direct methods
.method constructor <init>(Landroid/app/SharedPreferencesImpl;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Landroid/app/SharedPreferencesImpl;
    .param p2, "$anonymous0"    # Ljava/lang/String;

    .prologue
    .line 98
    iput-object p1, p0, Landroid/app/SharedPreferencesImpl$1;->this$0:Landroid/app/SharedPreferencesImpl;

    invoke-direct {p0, p2}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 100
    iget-object v0, p0, Landroid/app/SharedPreferencesImpl$1;->this$0:Landroid/app/SharedPreferencesImpl;

    invoke-static {v0}, Landroid/app/SharedPreferencesImpl;->-wrap1(Landroid/app/SharedPreferencesImpl;)V

    .line 99
    return-void
.end method
