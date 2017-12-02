.class final Landroid/telecom/Log$1;
.super Landroid/os/AsyncTask;
.source "Log.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/telecom/Log;->initMd5Sum()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
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


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 52
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "args"    # [Ljava/lang/Object;

    .prologue
    .line 54
    check-cast p1, [Ljava/lang/Void;

    .end local p1    # "args":[Ljava/lang/Object;
    invoke-virtual {p0, p1}, Landroid/telecom/Log$1;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method public varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 4
    .param p1, "args"    # [Ljava/lang/Void;

    .prologue
    .line 57
    :try_start_0
    const-string/jumbo v2, "SHA-1"

    invoke-static {v2}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 61
    :goto_0
    invoke-static {}, Landroid/telecom/Log;->-get0()Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2

    .line 62
    :try_start_1
    invoke-static {v1}, Landroid/telecom/Log;->-set0(Ljava/security/MessageDigest;)Ljava/security/MessageDigest;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v2

    .line 64
    const/4 v2, 0x0

    return-object v2

    .line 58
    :catch_0
    move-exception v0

    .line 59
    .local v0, "e":Ljava/security/NoSuchAlgorithmException;
    const/4 v1, 0x0

    .local v1, "md":Ljava/security/MessageDigest;
    goto :goto_0

    .line 61
    .end local v0    # "e":Ljava/security/NoSuchAlgorithmException;
    .end local v1    # "md":Ljava/security/MessageDigest;
    :catchall_0
    move-exception v3

    monitor-exit v2

    throw v3
.end method
