.class public abstract Landroid/accounts/AccountManagerInternal;
.super Ljava/lang/Object;
.source "AccountManagerInternal.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/accounts/AccountManagerInternal$OnAppPermissionChangeListener;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract addOnAppPermissionChangeListener(Landroid/accounts/AccountManagerInternal$OnAppPermissionChangeListener;)V
.end method

.method public abstract backupAccountAccessPermissions(I)[B
.end method

.method public abstract hasAccountAccess(Landroid/accounts/Account;I)Z
.end method

.method public abstract requestAccountAccess(Landroid/accounts/Account;Ljava/lang/String;ILandroid/os/RemoteCallback;)V
.end method

.method public abstract restoreAccountAccessPermissions([BI)V
.end method
