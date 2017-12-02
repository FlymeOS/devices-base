.class public Landroid/os/ServiceSpecificException;
.super Ljava/lang/RuntimeException;
.source "ServiceSpecificException.java"


# instance fields
.field public final errorCode:I


# direct methods
.method public constructor <init>(I)V
    .locals 0
    .param p1, "errorCode"    # I

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/RuntimeException;-><init>()V

    .line 40
    iput p1, p0, Landroid/os/ServiceSpecificException;->errorCode:I

    .line 39
    return-void
.end method

.method public constructor <init>(ILjava/lang/String;)V
    .locals 0
    .param p1, "errorCode"    # I
    .param p2, "message"    # Ljava/lang/String;

    .prologue
    .line 35
    invoke-direct {p0, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 36
    iput p1, p0, Landroid/os/ServiceSpecificException;->errorCode:I

    .line 34
    return-void
.end method
