.class public Landroid/util/apk/ApkSignatureSchemeV2Verifier$SignatureNotFoundException;
.super Ljava/lang/Exception;
.source "ApkSignatureSchemeV2Verifier.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/util/apk/ApkSignatureSchemeV2Verifier;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SignatureNotFoundException"
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x1L


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    .line 963
    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 962
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 0
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "cause"    # Ljava/lang/Throwable;

    .prologue
    .line 967
    invoke-direct {p0, p1, p2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 966
    return-void
.end method
