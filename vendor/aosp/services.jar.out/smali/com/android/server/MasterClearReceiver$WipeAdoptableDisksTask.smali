.class Lcom/android/server/MasterClearReceiver$WipeAdoptableDisksTask;
.super Landroid/os/AsyncTask;
.source "MasterClearReceiver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/MasterClearReceiver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "WipeAdoptableDisksTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field private final mChainedTask:Ljava/lang/Thread;

.field private final mContext:Landroid/content/Context;

.field private final mProgressDialog:Landroid/app/ProgressDialog;

.field final synthetic this$0:Lcom/android/server/MasterClearReceiver;


# direct methods
.method public constructor <init>(Lcom/android/server/MasterClearReceiver;Landroid/content/Context;Ljava/lang/Thread;)V
    .locals 1
    .param p1, "this$0"    # Lcom/android/server/MasterClearReceiver;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "chainedTask"    # Ljava/lang/Thread;

    .prologue
    .line 80
    iput-object p1, p0, Lcom/android/server/MasterClearReceiver$WipeAdoptableDisksTask;->this$0:Lcom/android/server/MasterClearReceiver;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 81
    iput-object p2, p0, Lcom/android/server/MasterClearReceiver$WipeAdoptableDisksTask;->mContext:Landroid/content/Context;

    .line 82
    iput-object p3, p0, Lcom/android/server/MasterClearReceiver$WipeAdoptableDisksTask;->mChainedTask:Ljava/lang/Thread;

    .line 83
    new-instance v0, Landroid/app/ProgressDialog;

    invoke-direct {v0, p2}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/server/MasterClearReceiver$WipeAdoptableDisksTask;->mProgressDialog:Landroid/app/ProgressDialog;

    .line 80
    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "params"    # [Ljava/lang/Object;

    .prologue
    .line 95
    check-cast p1, [Ljava/lang/Void;

    .end local p1    # "params":[Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/android/server/MasterClearReceiver$WipeAdoptableDisksTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 3
    .param p1, "params"    # [Ljava/lang/Void;

    .prologue
    .line 96
    const-string/jumbo v1, "MasterClear"

    const-string/jumbo v2, "Wiping adoptable disks"

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 97
    iget-object v1, p0, Lcom/android/server/MasterClearReceiver$WipeAdoptableDisksTask;->mContext:Landroid/content/Context;

    .line 98
    const-string/jumbo v2, "storage"

    .line 97
    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/storage/StorageManager;

    .line 99
    .local v0, "sm":Landroid/os/storage/StorageManager;
    invoke-virtual {v0}, Landroid/os/storage/StorageManager;->wipeAdoptableDisks()V

    .line 100
    const/4 v1, 0x0

    return-object v1
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .param p1, "result"    # Ljava/lang/Object;

    .prologue
    .line 104
    check-cast p1, Ljava/lang/Void;

    .end local p1    # "result":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/android/server/MasterClearReceiver$WipeAdoptableDisksTask;->onPostExecute(Ljava/lang/Void;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/Void;)V
    .locals 1
    .param p1, "result"    # Ljava/lang/Void;

    .prologue
    .line 105
    iget-object v0, p0, Lcom/android/server/MasterClearReceiver$WipeAdoptableDisksTask;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 106
    iget-object v0, p0, Lcom/android/server/MasterClearReceiver$WipeAdoptableDisksTask;->mChainedTask:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 104
    return-void
.end method

.method protected onPreExecute()V
    .locals 3

    .prologue
    .line 88
    iget-object v0, p0, Lcom/android/server/MasterClearReceiver$WipeAdoptableDisksTask;->mProgressDialog:Landroid/app/ProgressDialog;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    .line 89
    iget-object v0, p0, Lcom/android/server/MasterClearReceiver$WipeAdoptableDisksTask;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x7d3

    invoke-virtual {v0, v1}, Landroid/view/Window;->setType(I)V

    .line 90
    iget-object v0, p0, Lcom/android/server/MasterClearReceiver$WipeAdoptableDisksTask;->mProgressDialog:Landroid/app/ProgressDialog;

    iget-object v1, p0, Lcom/android/server/MasterClearReceiver$WipeAdoptableDisksTask;->mContext:Landroid/content/Context;

    const v2, 0x104044c

    invoke-virtual {v1, v2}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 91
    iget-object v0, p0, Lcom/android/server/MasterClearReceiver$WipeAdoptableDisksTask;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    .line 87
    return-void
.end method
