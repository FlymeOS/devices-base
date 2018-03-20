.class public abstract Landroid/content/ContentProvider;
.super Ljava/lang/Object;
.source "ContentProvider.java"

# interfaces
.implements Landroid/content/ComponentCallbacks2;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/content/ContentProvider$PipeDataWriter;,
        Landroid/content/ContentProvider$Transport;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "ContentProvider"


# instance fields

.field private mFlymeAccessControlManager:Lmeizu/security/AccessControlManager;

.field private mAuthorities:[Ljava/lang/String;

.field private mAuthority:Ljava/lang/String;

.field private final mCallingPackage:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mContext:Landroid/content/Context;

.field private mExported:Z

.field private mMyUid:I

.field private mNoPerms:Z

.field private mPathPermissions:[Landroid/content/pm/PathPermission;

.field private mReadPermission:Ljava/lang/String;

.field private mSingleUser:Z

.field private mTransport:Landroid/content/ContentProvider$Transport;

.field private mWritePermission:Ljava/lang/String;


# direct methods
.method static synthetic -wrap0(Landroid/content/ContentProvider;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "callingPackage"    # Ljava/lang/String;

    .prologue
    invoke-direct {p0, p1}, Landroid/content/ContentProvider;->setCallingPackage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap1(Landroid/content/ContentProvider;Landroid/net/Uri;)V
    .locals 0
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    invoke-direct {p0, p1}, Landroid/content/ContentProvider;->validateIncomingUri(Landroid/net/Uri;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 139
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 106
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/content/ContentProvider;->mContext:Landroid/content/Context;

    .line 120
    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    iput-object v0, p0, Landroid/content/ContentProvider;->mCallingPackage:Ljava/lang/ThreadLocal;

    .line 122
    new-instance v0, Landroid/content/ContentProvider$Transport;

    invoke-direct {v0, p0}, Landroid/content/ContentProvider$Transport;-><init>(Landroid/content/ContentProvider;)V

    iput-object v0, p0, Landroid/content/ContentProvider;->mTransport:Landroid/content/ContentProvider$Transport;

    .line 139
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;[Landroid/content/pm/PathPermission;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "readPermission"    # Ljava/lang/String;
    .param p3, "writePermission"    # Ljava/lang/String;
    .param p4, "pathPermissions"    # [Landroid/content/pm/PathPermission;

    .prologue
    .line 155
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 106
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/content/ContentProvider;->mContext:Landroid/content/Context;

    .line 120
    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    iput-object v0, p0, Landroid/content/ContentProvider;->mCallingPackage:Ljava/lang/ThreadLocal;

    .line 122
    new-instance v0, Landroid/content/ContentProvider$Transport;

    invoke-direct {v0, p0}, Landroid/content/ContentProvider$Transport;-><init>(Landroid/content/ContentProvider;)V

    iput-object v0, p0, Landroid/content/ContentProvider;->mTransport:Landroid/content/ContentProvider$Transport;

    .line 160
    iput-object p1, p0, Landroid/content/ContentProvider;->mContext:Landroid/content/Context;

    .line 161
    iput-object p2, p0, Landroid/content/ContentProvider;->mReadPermission:Ljava/lang/String;

    .line 162
    iput-object p3, p0, Landroid/content/ContentProvider;->mWritePermission:Ljava/lang/String;

    .line 163
    iput-object p4, p0, Landroid/content/ContentProvider;->mPathPermissions:[Landroid/content/pm/PathPermission;

    .line 159
    return-void
.end method

.method private attachInfo(Landroid/content/Context;Landroid/content/pm/ProviderInfo;Z)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "info"    # Landroid/content/pm/ProviderInfo;
    .param p3, "testing"    # Z

    .prologue
    const/4 v1, 0x0

    .line 1730
    iput-boolean p3, p0, Landroid/content/ContentProvider;->mNoPerms:Z

    .line 1736
    iget-object v0, p0, Landroid/content/ContentProvider;->mContext:Landroid/content/Context;

    if-nez v0, :cond_2

    .line 1737
    iput-object p1, p0, Landroid/content/ContentProvider;->mContext:Landroid/content/Context;

    .line 1738
    if-eqz p1, :cond_0

    .line 1739
    iget-object v2, p0, Landroid/content/ContentProvider;->mTransport:Landroid/content/ContentProvider$Transport;

    .line 1740
    const-string/jumbo v0, "appops"

    .line 1739
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AppOpsManager;

    iput-object v0, v2, Landroid/content/ContentProvider$Transport;->mAppOpsManager:Landroid/app/AppOpsManager;

    .line 1742
    :cond_0
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v0

    iput v0, p0, Landroid/content/ContentProvider;->mMyUid:I

    .line 1743
    if-eqz p2, :cond_1

    .line 1744
    iget-object v0, p2, Landroid/content/pm/ProviderInfo;->readPermission:Ljava/lang/String;

    invoke-virtual {p0, v0}, Landroid/content/ContentProvider;->setReadPermission(Ljava/lang/String;)V

    .line 1745
    iget-object v0, p2, Landroid/content/pm/ProviderInfo;->writePermission:Ljava/lang/String;

    invoke-virtual {p0, v0}, Landroid/content/ContentProvider;->setWritePermission(Ljava/lang/String;)V

    .line 1746
    iget-object v0, p2, Landroid/content/pm/ProviderInfo;->pathPermissions:[Landroid/content/pm/PathPermission;

    invoke-virtual {p0, v0}, Landroid/content/ContentProvider;->setPathPermissions([Landroid/content/pm/PathPermission;)V

    .line 1747
    iget-boolean v0, p2, Landroid/content/pm/ProviderInfo;->exported:Z

    iput-boolean v0, p0, Landroid/content/ContentProvider;->mExported:Z

    .line 1748
    iget v0, p2, Landroid/content/pm/ProviderInfo;->flags:I

    const/high16 v2, 0x40000000    # 2.0f

    and-int/2addr v0, v2

    if-eqz v0, :cond_3

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Landroid/content/ContentProvider;->mSingleUser:Z

    .line 1749
    iget-object v0, p2, Landroid/content/pm/ProviderInfo;->authority:Ljava/lang/String;

    invoke-virtual {p0, v0}, Landroid/content/ContentProvider;->setAuthorities(Ljava/lang/String;)V

    .line 1751
    :cond_1
    invoke-virtual {p0}, Landroid/content/ContentProvider;->onCreate()Z

    .line 1729
    :cond_2
    return-void

    :cond_3
    move v0, v1

    .line 1748
    goto :goto_0
.end method

.method private checkPermissionAndAppOp(Ljava/lang/String;Ljava/lang/String;Landroid/os/IBinder;)I
    .locals 5
    .param p1, "permission"    # Ljava/lang/String;
    .param p2, "callingPkg"    # Ljava/lang/String;
    .param p3, "callerToken"    # Landroid/os/IBinder;

    .prologue
    const/4 v4, 0x0

    .line 523
    invoke-virtual {p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    invoke-virtual {v1, p1, v2, v3, p3}, Landroid/content/Context;->checkPermission(Ljava/lang/String;IILandroid/os/IBinder;)I

    move-result v1

    if-eqz v1, :cond_0

    .line 525
    const/4 v1, 0x2

    return v1

    .line 528
    :cond_0
    invoke-static {p1}, Landroid/app/AppOpsManager;->permissionToOpCode(Ljava/lang/String;)I

    move-result v0

    .line 529
    .local v0, "permOp":I
    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    .line 530
    iget-object v1, p0, Landroid/content/ContentProvider;->mTransport:Landroid/content/ContentProvider$Transport;

    iget-object v1, v1, Landroid/content/ContentProvider$Transport;->mAppOpsManager:Landroid/app/AppOpsManager;

    invoke-virtual {v1, v0, p2}, Landroid/app/AppOpsManager;->noteProxyOp(ILjava/lang/String;)I

    move-result v1

    return v1

    .line 533
    :cond_1
    return v4
.end method

.method public static coerceToLocalContentProvider(Landroid/content/IContentProvider;)Landroid/content/ContentProvider;
    .locals 1
    .param p0, "abstractInterface"    # Landroid/content/IContentProvider;

    .prologue
    .line 181
    instance-of v0, p0, Landroid/content/ContentProvider$Transport;

    if-eqz v0, :cond_0

    .line 182
    check-cast p0, Landroid/content/ContentProvider$Transport;

    .end local p0    # "abstractInterface":Landroid/content/IContentProvider;
    invoke-virtual {p0}, Landroid/content/ContentProvider$Transport;->getContentProvider()Landroid/content/ContentProvider;

    move-result-object v0

    return-object v0

    .line 184
    .restart local p0    # "abstractInterface":Landroid/content/IContentProvider;
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public static getAuthorityWithoutUserId(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "auth"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 1903
    if-nez p0, :cond_0

    return-object v1

    .line 1904
    :cond_0
    const/16 v1, 0x40

    invoke-virtual {p0, v1}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    .line 1905
    .local v0, "end":I
    add-int/lit8 v1, v0, 0x1

    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static getUriWithoutUserId(Landroid/net/Uri;)Landroid/net/Uri;
    .locals 2
    .param p0, "uri"    # Landroid/net/Uri;

    .prologue
    const/4 v1, 0x0

    .line 1910
    if-nez p0, :cond_0

    return-object v1

    .line 1911
    :cond_0
    invoke-virtual {p0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    .line 1912
    .local v0, "builder":Landroid/net/Uri$Builder;
    invoke-virtual {p0}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/content/ContentProvider;->getAuthorityWithoutUserId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->authority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 1913
    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v1

    return-object v1
.end method

.method public static getUserIdFromAuthority(Ljava/lang/String;)I
    .locals 1
    .param p0, "auth"    # Ljava/lang/String;

    .prologue
    .line 1882
    const/4 v0, -0x2

    invoke-static {p0, v0}, Landroid/content/ContentProvider;->getUserIdFromAuthority(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static getUserIdFromAuthority(Ljava/lang/String;I)I
    .locals 5
    .param p0, "auth"    # Ljava/lang/String;
    .param p1, "defaultUserId"    # I

    .prologue
    .line 1868
    if-nez p0, :cond_0

    return p1

    .line 1869
    :cond_0
    const/16 v3, 0x40

    invoke-virtual {p0, v3}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v1

    .line 1870
    .local v1, "end":I
    const/4 v3, -0x1

    if-ne v1, v3, :cond_1

    return p1

    .line 1871
    :cond_1
    const/4 v3, 0x0

    invoke-virtual {p0, v3, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 1873
    .local v2, "userIdString":Ljava/lang/String;
    :try_start_0
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    return v3

    .line 1874
    :catch_0
    move-exception v0

    .line 1875
    .local v0, "e":Ljava/lang/NumberFormatException;
    const-string/jumbo v3, "ContentProvider"

    const-string/jumbo v4, "Error parsing userId."

    invoke-static {v3, v4, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1876
    const/16 v3, -0x2710

    return v3
.end method

.method public static getUserIdFromUri(Landroid/net/Uri;)I
    .locals 1
    .param p0, "uri"    # Landroid/net/Uri;

    .prologue
    .line 1893
    const/4 v0, -0x2

    invoke-static {p0, v0}, Landroid/content/ContentProvider;->getUserIdFromUri(Landroid/net/Uri;I)I

    move-result v0

    return v0
.end method

.method public static getUserIdFromUri(Landroid/net/Uri;I)I
    .locals 1
    .param p0, "uri"    # Landroid/net/Uri;
    .param p1, "defaultUserId"    # I

    .prologue
    .line 1887
    if-nez p0, :cond_0

    return p1

    .line 1888
    :cond_0
    invoke-virtual {p0}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/content/ContentProvider;->getUserIdFromAuthority(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static maybeAddUserId(Landroid/net/Uri;I)Landroid/net/Uri;
    .locals 3
    .param p0, "uri"    # Landroid/net/Uri;
    .param p1, "userId"    # I

    .prologue
    const/4 v1, 0x0

    .line 1924
    if-nez p0, :cond_0

    return-object v1

    .line 1925
    :cond_0
    const/4 v1, -0x2

    if-eq p1, v1, :cond_1

    .line 1926
    const-string/jumbo v1, "content"

    invoke-virtual {p0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 1925
    if-eqz v1, :cond_1

    .line 1927
    invoke-static {p0}, Landroid/content/ContentProvider;->uriHasUserId(Landroid/net/Uri;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 1929
    invoke-virtual {p0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    .line 1930
    .local v0, "builder":Landroid/net/Uri$Builder;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "@"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Landroid/net/Uri;->getEncodedAuthority()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->encodedAuthority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 1931
    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v1

    return-object v1

    .line 1934
    .end local v0    # "builder":Landroid/net/Uri$Builder;
    :cond_1
    return-object p0
.end method

.method private setCallingPackage(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "callingPackage"    # Ljava/lang/String;

    .prologue
    .line 701
    iget-object v1, p0, Landroid/content/ContentProvider;->mCallingPackage:Ljava/lang/ThreadLocal;

    invoke-virtual {v1}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 702
    .local v0, "original":Ljava/lang/String;
    iget-object v1, p0, Landroid/content/ContentProvider;->mCallingPackage:Ljava/lang/ThreadLocal;

    invoke-virtual {v1, p1}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 703
    return-object v0
.end method

.method public static uriHasUserId(Landroid/net/Uri;)Z
    .locals 2
    .param p0, "uri"    # Landroid/net/Uri;

    .prologue
    const/4 v0, 0x0

    .line 1918
    if-nez p0, :cond_0

    return v0

    .line 1919
    :cond_0
    invoke-virtual {p0}, Landroid/net/Uri;->getUserInfo()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private validateIncomingUri(Landroid/net/Uri;)V
    .locals 6
    .param p1, "uri"    # Landroid/net/Uri;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .prologue
    const/4 v3, -0x2

    .line 1848
    invoke-virtual {p1}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v0

    .line 1849
    .local v0, "auth":Ljava/lang/String;
    invoke-static {v0, v3}, Landroid/content/ContentProvider;->getUserIdFromAuthority(Ljava/lang/String;I)I

    move-result v2

    .line 1850
    .local v2, "userId":I
    if-eq v2, v3, :cond_0

    iget-object v3, p0, Landroid/content/ContentProvider;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getUserId()I

    move-result v3

    if-eq v2, v3, :cond_0

    .line 1851
    new-instance v3, Ljava/lang/SecurityException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "trying to query a ContentProvider in user "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 1852
    iget-object v5, p0, Landroid/content/ContentProvider;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getUserId()I

    move-result v5

    .line 1851
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 1852
    const-string/jumbo v5, " with a uri belonging to user "

    .line 1851
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 1854
    :cond_0
    invoke-static {v0}, Landroid/content/ContentProvider;->getAuthorityWithoutUserId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Landroid/content/ContentProvider;->matchesOurAuthorities(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 1855
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "The authority of the uri "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " does not match the one of the "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 1856
    const-string/jumbo v4, "contentProvider: "

    .line 1855
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1857
    .local v1, "message":Ljava/lang/String;
    iget-object v3, p0, Landroid/content/ContentProvider;->mAuthority:Ljava/lang/String;

    if-eqz v3, :cond_1

    .line 1858
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Landroid/content/ContentProvider;->mAuthority:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1862
    :goto_0
    new-instance v3, Ljava/lang/SecurityException;

    invoke-direct {v3, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 1860
    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Landroid/content/ContentProvider;->mAuthorities:[Ljava/lang/String;

    invoke-static {v4}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 1847
    .end local v1    # "message":Ljava/lang/String;
    :cond_2
    return-void
.end method


# virtual methods
.method public applyBatch(Ljava/util/ArrayList;)[Landroid/content/ContentProviderResult;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/ContentProviderOperation;",
            ">;)[",
            "Landroid/content/ContentProviderResult;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/OperationApplicationException;
        }
    .end annotation

    .prologue
    .line 1775
    .local p1, "operations":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 1776
    .local v1, "numOperations":I
    new-array v2, v1, [Landroid/content/ContentProviderResult;

    .line 1777
    .local v2, "results":[Landroid/content/ContentProviderResult;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 1778
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/ContentProviderOperation;

    invoke-virtual {v3, p0, v2, v0}, Landroid/content/ContentProviderOperation;->apply(Landroid/content/ContentProvider;[Landroid/content/ContentProviderResult;I)Landroid/content/ContentProviderResult;

    move-result-object v3

    aput-object v3, v2, v0

    .line 1777
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1780
    :cond_0
    return-object v2
.end method

.method public attachInfo(Landroid/content/Context;Landroid/content/pm/ProviderInfo;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "info"    # Landroid/content/pm/ProviderInfo;

    .prologue
    .line 1726
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Landroid/content/ContentProvider;->attachInfo(Landroid/content/Context;Landroid/content/pm/ProviderInfo;Z)V

    .line 1725
    return-void
.end method

.method public attachInfoForTesting(Landroid/content/Context;Landroid/content/pm/ProviderInfo;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "info"    # Landroid/content/pm/ProviderInfo;

    .prologue
    .line 1715
    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, v0}, Landroid/content/ContentProvider;->attachInfo(Landroid/content/Context;Landroid/content/pm/ProviderInfo;Z)V

    .line 1714
    return-void
.end method

.method public bulkInsert(Landroid/net/Uri;[Landroid/content/ContentValues;)I
    .locals 3
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "values"    # [Landroid/content/ContentValues;

    .prologue
    .line 1142
    array-length v1, p2

    .line 1143
    .local v1, "numValues":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 1144
    aget-object v2, p2, v0

    invoke-virtual {p0, p1, v2}, Landroid/content/ContentProvider;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    .line 1143
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1146
    :cond_0
    return v1
.end method

.method public call(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 1
    .param p1, "method"    # Ljava/lang/String;
    .param p2, "arg"    # Ljava/lang/String;
    .param p3, "extras"    # Landroid/os/Bundle;

    .prologue
    .line 1803
    const/4 v0, 0x0

    return-object v0
.end method

.method public canonicalize(Landroid/net/Uri;)Landroid/net/Uri;
    .locals 1
    .param p1, "url"    # Landroid/net/Uri;

    .prologue
    .line 1074
    const/4 v0, 0x0

    return-object v0
.end method

.method checkUser(IILandroid/content/Context;)Z
    .locals 4
    .param p1, "pid"    # I
    .param p2, "uid"    # I
    .param p3, "context"    # Landroid/content/Context;

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 511
    invoke-static {p2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v2

    invoke-virtual {p3}, Landroid/content/Context;->getUserId()I

    move-result v3

    if-eq v2, v3, :cond_0

    .line 512
    iget-boolean v2, p0, Landroid/content/ContentProvider;->mSingleUser:Z

    .line 511
    if-nez v2, :cond_0

    .line 513
    const-string/jumbo v2, "android.permission.INTERACT_ACROSS_USERS"

    invoke-virtual {p3, v2, p1, p2}, Landroid/content/Context;->checkPermission(Ljava/lang/String;II)I

    move-result v2

    if-nez v2, :cond_1

    .line 511
    :cond_0
    :goto_0
    return v0

    :cond_1
    move v0, v1

    .line 513
    goto :goto_0
.end method

.method public abstract delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 1
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "writer"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .prologue
    .line 1843
    const-string/jumbo v0, "nothing to dump"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1842
    return-void
.end method

.method protected enforceReadPermissionInner(Landroid/net/Uri;Ljava/lang/String;Landroid/os/IBinder;)I
    .locals 22
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "callingPkg"    # Ljava/lang/String;
    .param p3, "callerToken"    # Landroid/os/IBinder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .prologue
    .line 539
    invoke-virtual/range {p0 .. p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object v4

    .line 540
    .local v4, "context":Landroid/content/Context;
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v6

    .line 541
    .local v6, "pid":I
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v7

    .line 542
    .local v7, "uid":I
    const/4 v14, 0x0

    .line 543
    .local v14, "missingPerm":Ljava/lang/String;
    const/16 v20, 0x0

    .line 545
    .local v20, "strongestMode":I
    move-object/from16 v0, p0

    iget v8, v0, Landroid/content/ContentProvider;->mMyUid:I

    invoke-static {v7, v8}, Landroid/os/UserHandle;->isSameApp(II)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 546
    const/4 v8, 0x0

    return v8

    .line 549
    :cond_0
    move-object/from16 v0, p0

    iget-boolean v8, v0, Landroid/content/ContentProvider;->mExported:Z

    if-eqz v8, :cond_7

    move-object/from16 v0, p0

    invoke-virtual {v0, v6, v7, v4}, Landroid/content/ContentProvider;->checkUser(IILandroid/content/Context;)Z

    move-result v8

    if-eqz v8, :cond_7

    .line 550
    invoke-virtual/range {p0 .. p0}, Landroid/content/ContentProvider;->getReadPermission()Ljava/lang/String;

    move-result-object v12

    .line 551
    .local v12, "componentPerm":Ljava/lang/String;
    if-eqz v12, :cond_2

    .line 552
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    invoke-direct {v0, v12, v1, v2}, Landroid/content/ContentProvider;->checkPermissionAndAppOp(Ljava/lang/String;Ljava/lang/String;Landroid/os/IBinder;)I

    move-result v15

    .line 553
    .local v15, "mode":I
    if-nez v15, :cond_1

    .line 554
    const/4 v8, 0x0

    return v8

    .line 556
    :cond_1
    move-object v14, v12

    .line 557
    .local v14, "missingPerm":Ljava/lang/String;
    move/from16 v0, v20

    invoke-static {v0, v15}, Ljava/lang/Math;->max(II)I

    move-result v20

    .line 563
    .end local v14    # "missingPerm":Ljava/lang/String;
    .end local v15    # "mode":I
    :cond_2
    if-nez v12, :cond_3

    const/4 v10, 0x1

    .line 565
    .local v10, "allowDefaultRead":Z
    :goto_0
    invoke-virtual/range {p0 .. p0}, Landroid/content/ContentProvider;->getPathPermissions()[Landroid/content/pm/PathPermission;

    move-result-object v19

    .line 566
    .local v19, "pps":[Landroid/content/pm/PathPermission;
    if-eqz v19, :cond_6

    .line 567
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v16

    .line 568
    .local v16, "path":Ljava/lang/String;
    const/4 v8, 0x0

    move-object/from16 v0, v19

    array-length v9, v0

    :goto_1
    if-ge v8, v9, :cond_6

    aget-object v18, v19, v8

    .line 569
    .local v18, "pp":Landroid/content/pm/PathPermission;
    invoke-virtual/range {v18 .. v18}, Landroid/content/pm/PathPermission;->getReadPermission()Ljava/lang/String;

    move-result-object v17

    .line 570
    .local v17, "pathPerm":Ljava/lang/String;
    if-eqz v17, :cond_5

    move-object/from16 v0, v18

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/content/pm/PathPermission;->match(Ljava/lang/String;)Z

    move-result v21

    if-eqz v21, :cond_5

    .line 571
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    invoke-direct {v0, v1, v2, v3}, Landroid/content/ContentProvider;->checkPermissionAndAppOp(Ljava/lang/String;Ljava/lang/String;Landroid/os/IBinder;)I

    move-result v15

    .line 572
    .restart local v15    # "mode":I
    if-nez v15, :cond_4

    .line 573
    const/4 v8, 0x0

    return v8

    .line 563
    .end local v10    # "allowDefaultRead":Z
    .end local v15    # "mode":I
    .end local v16    # "path":Ljava/lang/String;
    .end local v17    # "pathPerm":Ljava/lang/String;
    .end local v18    # "pp":Landroid/content/pm/PathPermission;
    .end local v19    # "pps":[Landroid/content/pm/PathPermission;
    :cond_3
    const/4 v10, 0x0

    .restart local v10    # "allowDefaultRead":Z
    goto :goto_0

    .line 577
    .restart local v15    # "mode":I
    .restart local v16    # "path":Ljava/lang/String;
    .restart local v17    # "pathPerm":Ljava/lang/String;
    .restart local v18    # "pp":Landroid/content/pm/PathPermission;
    .restart local v19    # "pps":[Landroid/content/pm/PathPermission;
    :cond_4
    const/4 v10, 0x0

    .line 578
    move-object/from16 v14, v17

    .line 579
    .restart local v14    # "missingPerm":Ljava/lang/String;
    move/from16 v0, v20

    invoke-static {v0, v15}, Ljava/lang/Math;->max(II)I

    move-result v20

    .line 568
    .end local v14    # "missingPerm":Ljava/lang/String;
    .end local v15    # "mode":I
    :cond_5
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .line 587
    .end local v16    # "path":Ljava/lang/String;
    .end local v17    # "pathPerm":Ljava/lang/String;
    .end local v18    # "pp":Landroid/content/pm/PathPermission;
    :cond_6
    if-eqz v10, :cond_7

    const/4 v8, 0x0

    return v8

    .line 591
    .end local v10    # "allowDefaultRead":Z
    .end local v12    # "componentPerm":Ljava/lang/String;
    .end local v19    # "pps":[Landroid/content/pm/PathPermission;
    :cond_7
    invoke-static {v7}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v11

    .line 592
    .local v11, "callingUserId":I
    move-object/from16 v0, p0

    iget-boolean v8, v0, Landroid/content/ContentProvider;->mSingleUser:Z

    if-eqz v8, :cond_8

    move-object/from16 v0, p0

    iget v8, v0, Landroid/content/ContentProvider;->mMyUid:I

    invoke-static {v8, v7}, Landroid/os/UserHandle;->isSameUser(II)Z

    move-result v8

    if-eqz v8, :cond_9

    :cond_8
    move-object/from16 v5, p1

    .line 594
    .local v5, "userUri":Landroid/net/Uri;
    :goto_2
    const/4 v8, 0x1

    move-object/from16 v9, p3

    invoke-virtual/range {v4 .. v9}, Landroid/content/Context;->checkUriPermission(Landroid/net/Uri;IIILandroid/os/IBinder;)I

    move-result v8

    if-nez v8, :cond_a

    .line 596
    const/4 v8, 0x0

    return v8

    .line 593
    .end local v5    # "userUri":Landroid/net/Uri;
    :cond_9
    move-object/from16 v0, p1

    invoke-static {v0, v11}, Landroid/content/ContentProvider;->maybeAddUserId(Landroid/net/Uri;I)Landroid/net/Uri;

    move-result-object v5

    goto :goto_2

    .line 601
    .restart local v5    # "userUri":Landroid/net/Uri;
    :cond_a
    const/4 v8, 0x1

    move/from16 v0, v20

    if-ne v0, v8, :cond_b

    .line 602
    const/4 v8, 0x1

    return v8

    .line 605
    :cond_b
    move-object/from16 v0, p0

    iget-boolean v8, v0, Landroid/content/ContentProvider;->mExported:Z

    if-eqz v8, :cond_c

    .line 606
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, " requires "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, ", or grantUriPermission()"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    .line 608
    .local v13, "failReason":Ljava/lang/String;
    :goto_3
    new-instance v8, Ljava/lang/SecurityException;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v21, "Permission Denial: reading "

    move-object/from16 v0, v21

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    .line 609
    invoke-virtual/range {p0 .. p0}, Landroid/content/ContentProvider;->getClass()Ljava/lang/Class;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v21

    .line 608
    move-object/from16 v0, v21

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    .line 609
    const-string/jumbo v21, " uri "

    .line 608
    move-object/from16 v0, v21

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move-object/from16 v0, p1

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    .line 609
    const-string/jumbo v21, " from pid="

    .line 608
    move-object/from16 v0, v21

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    .line 610
    const-string/jumbo v21, ", uid="

    .line 608
    move-object/from16 v0, v21

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 607
    .end local v13    # "failReason":Ljava/lang/String;
    :cond_c
    const-string/jumbo v13, " requires the provider be exported, or grantUriPermission()"

    .restart local v13    # "failReason":Ljava/lang/String;
    goto :goto_3
.end method

.method protected enforceWritePermissionInner(Landroid/net/Uri;Ljava/lang/String;Landroid/os/IBinder;)I
    .locals 19
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "callingPkg"    # Ljava/lang/String;
    .param p3, "callerToken"    # Landroid/os/IBinder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .prologue
    .line 616
    invoke-virtual/range {p0 .. p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object v3

    .line 617
    .local v3, "context":Landroid/content/Context;
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v5

    .line 618
    .local v5, "pid":I
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v6

    .line 619
    .local v6, "uid":I
    const/4 v12, 0x0

    .line 620
    .local v12, "missingPerm":Ljava/lang/String;
    const/16 v18, 0x0

    .line 622
    .local v18, "strongestMode":I
    move-object/from16 v0, p0

    iget v4, v0, Landroid/content/ContentProvider;->mMyUid:I

    invoke-static {v6, v4}, Landroid/os/UserHandle;->isSameApp(II)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 623
    const/4 v4, 0x0

    return v4

    .line 626
    :cond_0
    move-object/from16 v0, p0

    iget-boolean v4, v0, Landroid/content/ContentProvider;->mExported:Z

    if-eqz v4, :cond_7

    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v6, v3}, Landroid/content/ContentProvider;->checkUser(IILandroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 627
    invoke-virtual/range {p0 .. p0}, Landroid/content/ContentProvider;->getWritePermission()Ljava/lang/String;

    move-result-object v10

    .line 628
    .local v10, "componentPerm":Ljava/lang/String;
    if-eqz v10, :cond_2

    .line 629
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    invoke-direct {v0, v10, v1, v2}, Landroid/content/ContentProvider;->checkPermissionAndAppOp(Ljava/lang/String;Ljava/lang/String;Landroid/os/IBinder;)I

    move-result v13

    .line 630
    .local v13, "mode":I
    if-nez v13, :cond_1

    .line 631
    const/4 v4, 0x0

    return v4

    .line 633
    :cond_1
    move-object v12, v10

    .line 634
    .local v12, "missingPerm":Ljava/lang/String;
    move/from16 v0, v18

    invoke-static {v0, v13}, Ljava/lang/Math;->max(II)I

    move-result v18

    .line 640
    .end local v12    # "missingPerm":Ljava/lang/String;
    .end local v13    # "mode":I
    :cond_2
    if-nez v10, :cond_3

    const/4 v9, 0x1

    .line 642
    .local v9, "allowDefaultWrite":Z
    :goto_0
    invoke-virtual/range {p0 .. p0}, Landroid/content/ContentProvider;->getPathPermissions()[Landroid/content/pm/PathPermission;

    move-result-object v17

    .line 643
    .local v17, "pps":[Landroid/content/pm/PathPermission;
    if-eqz v17, :cond_6

    .line 644
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v14

    .line 645
    .local v14, "path":Ljava/lang/String;
    const/4 v4, 0x0

    move-object/from16 v0, v17

    array-length v7, v0

    :goto_1
    if-ge v4, v7, :cond_6

    aget-object v16, v17, v4

    .line 646
    .local v16, "pp":Landroid/content/pm/PathPermission;
    invoke-virtual/range {v16 .. v16}, Landroid/content/pm/PathPermission;->getWritePermission()Ljava/lang/String;

    move-result-object v15

    .line 647
    .local v15, "pathPerm":Ljava/lang/String;
    if-eqz v15, :cond_5

    move-object/from16 v0, v16

    invoke-virtual {v0, v14}, Landroid/content/pm/PathPermission;->match(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_5

    .line 648
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    invoke-direct {v0, v15, v1, v2}, Landroid/content/ContentProvider;->checkPermissionAndAppOp(Ljava/lang/String;Ljava/lang/String;Landroid/os/IBinder;)I

    move-result v13

    .line 649
    .restart local v13    # "mode":I
    if-nez v13, :cond_4

    .line 650
    const/4 v4, 0x0

    return v4

    .line 640
    .end local v9    # "allowDefaultWrite":Z
    .end local v13    # "mode":I
    .end local v14    # "path":Ljava/lang/String;
    .end local v15    # "pathPerm":Ljava/lang/String;
    .end local v16    # "pp":Landroid/content/pm/PathPermission;
    .end local v17    # "pps":[Landroid/content/pm/PathPermission;
    :cond_3
    const/4 v9, 0x0

    .restart local v9    # "allowDefaultWrite":Z
    goto :goto_0

    .line 654
    .restart local v13    # "mode":I
    .restart local v14    # "path":Ljava/lang/String;
    .restart local v15    # "pathPerm":Ljava/lang/String;
    .restart local v16    # "pp":Landroid/content/pm/PathPermission;
    .restart local v17    # "pps":[Landroid/content/pm/PathPermission;
    :cond_4
    const/4 v9, 0x0

    .line 655
    move-object v12, v15

    .line 656
    .restart local v12    # "missingPerm":Ljava/lang/String;
    move/from16 v0, v18

    invoke-static {v0, v13}, Ljava/lang/Math;->max(II)I

    move-result v18

    .line 645
    .end local v12    # "missingPerm":Ljava/lang/String;
    .end local v13    # "mode":I
    :cond_5
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 664
    .end local v14    # "path":Ljava/lang/String;
    .end local v15    # "pathPerm":Ljava/lang/String;
    .end local v16    # "pp":Landroid/content/pm/PathPermission;
    :cond_6
    if-eqz v9, :cond_7

    const/4 v4, 0x0

    return v4

    .line 668
    .end local v9    # "allowDefaultWrite":Z
    .end local v10    # "componentPerm":Ljava/lang/String;
    .end local v17    # "pps":[Landroid/content/pm/PathPermission;
    :cond_7
    const/4 v7, 0x2

    move-object/from16 v4, p1

    move-object/from16 v8, p3

    invoke-virtual/range {v3 .. v8}, Landroid/content/Context;->checkUriPermission(Landroid/net/Uri;IIILandroid/os/IBinder;)I

    move-result v4

    if-nez v4, :cond_8

    .line 670
    const/4 v4, 0x0

    return v4

    .line 675
    :cond_8
    const/4 v4, 0x1

    move/from16 v0, v18

    if-ne v0, v4, :cond_9

    .line 676
    const/4 v4, 0x1

    return v4

    .line 679
    :cond_9
    move-object/from16 v0, p0

    iget-boolean v4, v0, Landroid/content/ContentProvider;->mExported:Z

    if-eqz v4, :cond_a

    .line 680
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, " requires "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v7, ", or grantUriPermission()"

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 682
    .local v11, "failReason":Ljava/lang/String;
    :goto_2
    new-instance v4, Ljava/lang/SecurityException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "Permission Denial: writing "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 683
    invoke-virtual/range {p0 .. p0}, Landroid/content/ContentProvider;->getClass()Ljava/lang/Class;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v8

    .line 682
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 683
    const-string/jumbo v8, " uri "

    .line 682
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, p1

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 683
    const-string/jumbo v8, " from pid="

    .line 682
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 684
    const-string/jumbo v8, ", uid="

    .line 682
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v4, v7}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 681
    .end local v11    # "failReason":Ljava/lang/String;
    :cond_a
    const-string/jumbo v11, " requires the provider be exported, or grantUriPermission()"

    .restart local v11    # "failReason":Ljava/lang/String;
    goto :goto_2
.end method

.method public getAppOpsManager()Landroid/app/AppOpsManager;
    .locals 1

    .prologue
    .line 838
    iget-object v0, p0, Landroid/content/ContentProvider;->mTransport:Landroid/content/ContentProvider$Transport;

    iget-object v0, v0, Landroid/content/ContentProvider$Transport;->mAppOpsManager:Landroid/app/AppOpsManager;

    return-object v0
.end method

.method public final getCallingPackage()Ljava/lang/String;
    .locals 3

    .prologue
    .line 721
    iget-object v1, p0, Landroid/content/ContentProvider;->mCallingPackage:Ljava/lang/ThreadLocal;

    invoke-virtual {v1}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 722
    .local v0, "pkg":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 723
    iget-object v1, p0, Landroid/content/ContentProvider;->mTransport:Landroid/content/ContentProvider$Transport;

    iget-object v1, v1, Landroid/content/ContentProvider$Transport;->mAppOpsManager:Landroid/app/AppOpsManager;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    invoke-virtual {v1, v2, v0}, Landroid/app/AppOpsManager;->checkPackage(ILjava/lang/String;)V

    .line 725
    :cond_0
    return-object v0
.end method

.method public final getContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 693
    iget-object v0, p0, Landroid/content/ContentProvider;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method public getIContentProvider()Landroid/content/IContentProvider;
    .locals 1

    .prologue
    .line 1706
    iget-object v0, p0, Landroid/content/ContentProvider;->mTransport:Landroid/content/ContentProvider$Transport;

    return-object v0
.end method

.method public final getPathPermissions()[Landroid/content/pm/PathPermission;
    .locals 1

    .prologue
    .line 825
    iget-object v0, p0, Landroid/content/ContentProvider;->mPathPermissions:[Landroid/content/pm/PathPermission;

    return-object v0
.end method

.method public final getReadPermission()Ljava/lang/String;
    .locals 1

    .prologue
    .line 781
    iget-object v0, p0, Landroid/content/ContentProvider;->mReadPermission:Ljava/lang/String;

    return-object v0
.end method

.method public getStreamTypes(Landroid/net/Uri;Ljava/lang/String;)[Ljava/lang/String;
    .locals 1
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "mimeTypeFilter"    # Ljava/lang/String;

    .prologue
    .line 1505
    const/4 v0, 0x0

    return-object v0
.end method

.method public abstract getType(Landroid/net/Uri;)Ljava/lang/String;
.end method

.method public final getWritePermission()Ljava/lang/String;
    .locals 1

    .prologue
    .line 803
    iget-object v0, p0, Landroid/content/ContentProvider;->mWritePermission:Ljava/lang/String;

    return-object v0
.end method

.method public abstract insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
.end method

.method protected isTemporary()Z
    .locals 1

    .prologue
    .line 1696
    const/4 v0, 0x0

    return v0
.end method

.method protected final matchesOurAuthorities(Ljava/lang/String;)Z
    .locals 3
    .param p1, "authority"    # Ljava/lang/String;

    .prologue
    .line 749
    iget-object v2, p0, Landroid/content/ContentProvider;->mAuthority:Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 750
    iget-object v2, p0, Landroid/content/ContentProvider;->mAuthority:Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    return v2

    .line 752
    :cond_0
    iget-object v2, p0, Landroid/content/ContentProvider;->mAuthorities:[Ljava/lang/String;

    if-eqz v2, :cond_2

    .line 753
    iget-object v2, p0, Landroid/content/ContentProvider;->mAuthorities:[Ljava/lang/String;

    array-length v1, v2

    .line 754
    .local v1, "length":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_2

    .line 755
    iget-object v2, p0, Landroid/content/ContentProvider;->mAuthorities:[Ljava/lang/String;

    aget-object v2, v2, v0

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v2, 0x1

    return v2

    .line 754
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 758
    .end local v0    # "i":I
    .end local v1    # "length":I
    :cond_2
    const/4 v2, 0x0

    return v2
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 878
    return-void
.end method

.method public abstract onCreate()Z
.end method

.method public onLowMemory()V
    .locals 0

    .prologue
    .line 889
    return-void
.end method

.method public onTrimMemory(I)V
    .locals 0
    .param p1, "level"    # I

    .prologue
    .line 892
    return-void
.end method

.method public openAssetFile(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/res/AssetFileDescriptor;
    .locals 6
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "mode"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 1377
    invoke-virtual {p0, p1, p2}, Landroid/content/ContentProvider;->openFile(Landroid/net/Uri;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;

    move-result-object v1

    .line 1378
    .local v1, "fd":Landroid/os/ParcelFileDescriptor;
    if-eqz v1, :cond_0

    new-instance v0, Landroid/content/res/AssetFileDescriptor;

    const-wide/16 v2, 0x0

    const-wide/16 v4, -0x1

    invoke-direct/range {v0 .. v5}, Landroid/content/res/AssetFileDescriptor;-><init>(Landroid/os/ParcelFileDescriptor;JJ)V

    :cond_0
    return-object v0
.end method

.method public openAssetFile(Landroid/net/Uri;Ljava/lang/String;Landroid/os/CancellationSignal;)Landroid/content/res/AssetFileDescriptor;
    .locals 1
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "mode"    # Ljava/lang/String;
    .param p3, "signal"    # Landroid/os/CancellationSignal;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .prologue
    .line 1440
    invoke-virtual {p0, p1, p2}, Landroid/content/ContentProvider;->openAssetFile(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/res/AssetFileDescriptor;

    move-result-object v0

    return-object v0
.end method

.method public openFile(Landroid/net/Uri;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;
    .locals 3
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "mode"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .prologue
    .line 1251
    new-instance v0, Ljava/io/FileNotFoundException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "No files supported by provider at "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public openFile(Landroid/net/Uri;Ljava/lang/String;Landroid/os/CancellationSignal;)Landroid/os/ParcelFileDescriptor;
    .locals 1
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "mode"    # Ljava/lang/String;
    .param p3, "signal"    # Landroid/os/CancellationSignal;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .prologue
    .line 1321
    invoke-virtual {p0, p1, p2}, Landroid/content/ContentProvider;->openFile(Landroid/net/Uri;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;

    move-result-object v0

    return-object v0
.end method

.method protected final openFileHelper(Landroid/net/Uri;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;
    .locals 12
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "mode"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .prologue
    const/4 v11, 0x1

    const/4 v7, 0x0

    const/4 v3, 0x0

    .line 1459
    new-array v2, v11, [Ljava/lang/String;

    const-string/jumbo v0, "_data"

    aput-object v0, v2, v7

    move-object v0, p0

    move-object v1, p1

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentProvider;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 1460
    .local v6, "c":Landroid/database/Cursor;
    if-eqz v6, :cond_0

    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v7

    .line 1461
    .local v7, "count":I
    :cond_0
    if-eq v7, v11, :cond_3

    .line 1464
    if-eqz v6, :cond_1

    .line 1465
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 1467
    :cond_1
    if-nez v7, :cond_2

    .line 1468
    new-instance v0, Ljava/io/FileNotFoundException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "No entry for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1470
    :cond_2
    new-instance v0, Ljava/io/FileNotFoundException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Multiple items at "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1473
    :cond_3
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    .line 1474
    const-string/jumbo v0, "_data"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v8

    .line 1475
    .local v8, "i":I
    if-ltz v8, :cond_4

    invoke-interface {v6, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 1476
    :goto_0
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 1477
    if-nez v10, :cond_5

    .line 1478
    new-instance v0, Ljava/io/FileNotFoundException;

    const-string/jumbo v1, "Column _data not found."

    invoke-direct {v0, v1}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1475
    :cond_4
    const/4 v10, 0x0

    .local v10, "path":Ljava/lang/String;
    goto :goto_0

    .line 1481
    .end local v10    # "path":Ljava/lang/String;
    :cond_5
    invoke-static {p2}, Landroid/os/ParcelFileDescriptor;->parseMode(Ljava/lang/String;)I

    move-result v9

    .line 1482
    .local v9, "modeBits":I
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v10}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v0, v9}, Landroid/os/ParcelFileDescriptor;->open(Ljava/io/File;I)Landroid/os/ParcelFileDescriptor;

    move-result-object v0

    return-object v0
.end method

.method public openPipeHelper(Landroid/net/Uri;Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/Object;Landroid/content/ContentProvider$PipeDataWriter;)Landroid/os/ParcelFileDescriptor;
    .locals 9
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "mimeType"    # Ljava/lang/String;
    .param p3, "opts"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/net/Uri;",
            "Ljava/lang/String;",
            "Landroid/os/Bundle;",
            "TT;",
            "Landroid/content/ContentProvider$PipeDataWriter",
            "<TT;>;)",
            "Landroid/os/ParcelFileDescriptor;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .prologue
    .line 1669
    .local p4, "args":Ljava/lang/Object;, "TT;"
    .local p5, "func":Landroid/content/ContentProvider$PipeDataWriter;, "Landroid/content/ContentProvider$PipeDataWriter<TT;>;"
    :try_start_0
    invoke-static {}, Landroid/os/ParcelFileDescriptor;->createPipe()[Landroid/os/ParcelFileDescriptor;

    move-result-object v3

    .line 1671
    .local v3, "fds":[Landroid/os/ParcelFileDescriptor;
    new-instance v0, Landroid/content/ContentProvider$1;

    move-object v1, p0

    move-object v2, p5

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    move-object v7, p4

    invoke-direct/range {v0 .. v7}, Landroid/content/ContentProvider$1;-><init>(Landroid/content/ContentProvider;Landroid/content/ContentProvider$PipeDataWriter;[Landroid/os/ParcelFileDescriptor;Landroid/net/Uri;Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/Object;)V

    .line 1683
    .local v0, "task":Landroid/os/AsyncTask;, "Landroid/os/AsyncTask<Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;>;"
    sget-object v2, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v1, 0x0

    check-cast v1, [Ljava/lang/Object;

    invoke-virtual {v0, v2, v1}, Landroid/os/AsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 1685
    const/4 v1, 0x0

    aget-object v1, v3, v1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 1686
    .end local v0    # "task":Landroid/os/AsyncTask;, "Landroid/os/AsyncTask<Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;>;"
    .end local v3    # "fds":[Landroid/os/ParcelFileDescriptor;
    :catch_0
    move-exception v8

    .line 1687
    .local v8, "e":Ljava/io/IOException;
    new-instance v1, Ljava/io/FileNotFoundException;

    const-string/jumbo v2, "failure making pipe"

    invoke-direct {v1, v2}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public openTypedAssetFile(Landroid/net/Uri;Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/res/AssetFileDescriptor;
    .locals 4
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "mimeTypeFilter"    # Ljava/lang/String;
    .param p3, "opts"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .prologue
    .line 1555
    const-string/jumbo v1, "*/*"

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1557
    const-string/jumbo v1, "r"

    invoke-virtual {p0, p1, v1}, Landroid/content/ContentProvider;->openAssetFile(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/res/AssetFileDescriptor;

    move-result-object v1

    return-object v1

    .line 1559
    :cond_0
    invoke-virtual {p0, p1}, Landroid/content/ContentProvider;->getType(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    .line 1560
    .local v0, "baseType":Ljava/lang/String;
    if-eqz v0, :cond_1

    invoke-static {v0, p2}, Landroid/content/ClipDescription;->compareMimeTypes(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1563
    const-string/jumbo v1, "r"

    invoke-virtual {p0, p1, v1}, Landroid/content/ContentProvider;->openAssetFile(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/res/AssetFileDescriptor;

    move-result-object v1

    return-object v1

    .line 1565
    :cond_1
    new-instance v1, Ljava/io/FileNotFoundException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Can\'t open "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " as type "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public openTypedAssetFile(Landroid/net/Uri;Ljava/lang/String;Landroid/os/Bundle;Landroid/os/CancellationSignal;)Landroid/content/res/AssetFileDescriptor;
    .locals 1
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "mimeTypeFilter"    # Ljava/lang/String;
    .param p3, "opts"    # Landroid/os/Bundle;
    .param p4, "signal"    # Landroid/os/CancellationSignal;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .prologue
    .line 1623
    invoke-virtual {p0, p1, p2, p3}, Landroid/content/ContentProvider;->openTypedAssetFile(Landroid/net/Uri;Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/res/AssetFileDescriptor;

    move-result-object v0

    return-object v0
.end method

.method public abstract query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
.end method

.method public query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Landroid/os/CancellationSignal;)Landroid/database/Cursor;
    .locals 1
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "projection"    # [Ljava/lang/String;
    .param p3, "selection"    # Ljava/lang/String;
    .param p4, "selectionArgs"    # [Ljava/lang/String;
    .param p5, "sortOrder"    # Ljava/lang/String;
    .param p6, "cancellationSignal"    # Landroid/os/CancellationSignal;

    .prologue
    .line 1020
    invoke-virtual/range {p0 .. p5}, Landroid/content/ContentProvider;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method public rejectInsert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    .locals 2
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "values"    # Landroid/content/ContentValues;

    .prologue
    .line 1109
    invoke-virtual {p1}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    const-string/jumbo v1, "0"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public final setAppOps(II)V
    .locals 1
    .param p1, "readOp"    # I
    .param p2, "writeOp"    # I

    .prologue
    .line 830
    iget-boolean v0, p0, Landroid/content/ContentProvider;->mNoPerms:Z

    if-nez v0, :cond_0

    .line 831
    iget-object v0, p0, Landroid/content/ContentProvider;->mTransport:Landroid/content/ContentProvider$Transport;

    iput p1, v0, Landroid/content/ContentProvider$Transport;->mReadOp:I

    .line 832
    iget-object v0, p0, Landroid/content/ContentProvider;->mTransport:Landroid/content/ContentProvider$Transport;

    iput p2, v0, Landroid/content/ContentProvider$Transport;->mWriteOp:I

    .line 829
    :cond_0
    return-void
.end method

.method protected final setAuthorities(Ljava/lang/String;)V
    .locals 3
    .param p1, "authorities"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 736
    if-eqz p1, :cond_0

    .line 737
    const/16 v0, 0x3b

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    .line 738
    iput-object p1, p0, Landroid/content/ContentProvider;->mAuthority:Ljava/lang/String;

    .line 739
    iput-object v2, p0, Landroid/content/ContentProvider;->mAuthorities:[Ljava/lang/String;

    .line 735
    :cond_0
    :goto_0
    return-void

    .line 741
    :cond_1
    iput-object v2, p0, Landroid/content/ContentProvider;->mAuthority:Ljava/lang/String;

    .line 742
    const-string/jumbo v0, ";"

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/content/ContentProvider;->mAuthorities:[Ljava/lang/String;

    goto :goto_0
.end method

.method protected final setPathPermissions([Landroid/content/pm/PathPermission;)V
    .locals 0
    .param p1, "permissions"    # [Landroid/content/pm/PathPermission;

    .prologue
    .line 814
    iput-object p1, p0, Landroid/content/ContentProvider;->mPathPermissions:[Landroid/content/pm/PathPermission;

    .line 813
    return-void
.end method

.method protected final setReadPermission(Ljava/lang/String;)V
    .locals 0
    .param p1, "permission"    # Ljava/lang/String;

    .prologue
    .line 770
    iput-object p1, p0, Landroid/content/ContentProvider;->mReadPermission:Ljava/lang/String;

    .line 769
    return-void
.end method

.method protected final setWritePermission(Ljava/lang/String;)V
    .locals 0
    .param p1, "permission"    # Ljava/lang/String;

    .prologue
    .line 792
    iput-object p1, p0, Landroid/content/ContentProvider;->mWritePermission:Ljava/lang/String;

    .line 791
    return-void
.end method

.method public shutdown()V
    .locals 2

    .prologue
    .line 1829
    const-string/jumbo v0, "ContentProvider"

    const-string/jumbo v1, "implement ContentProvider shutdown() to make sure all database connections are gracefully shutdown"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1828
    return-void
.end method

.method public uncanonicalize(Landroid/net/Uri;)Landroid/net/Uri;
    .locals 0
    .param p1, "url"    # Landroid/net/Uri;

    .prologue
    .line 1092
    return-object p1
.end method

.method public abstract update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
.end method

.method isFlymeCurentLockApp(Landroid/net/Uri;Ljava/lang/String;)Z
    .locals 21
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "callingPkg"    # Ljava/lang/String;

    .prologue
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v16

    .local v16, "uid":I
    move-object/from16 v0, p0

    iget v0, v0, Landroid/content/ContentProvider;->mMyUid:I

    move/from16 v17, v0

    invoke-static/range {v16 .. v17}, Landroid/os/UserHandle;->isSameApp(II)Z

    move-result v17

    if-eqz v17, :cond_0

    const/16 v17, 0x0

    return v17

    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/content/ContentProvider;->mFlymeAccessControlManager:Lmeizu/security/AccessControlManager;

    move-object/from16 v17, v0

    if-nez v17, :cond_1

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/content/ContentProvider;->mContext:Landroid/content/Context;

    move-object/from16 v17, v0

    const-string v18, "access_control"

    invoke-virtual/range {v17 .. v18}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Lmeizu/security/AccessControlManager;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/content/ContentProvider;->mFlymeAccessControlManager:Lmeizu/security/AccessControlManager;

    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/content/ContentProvider;->mFlymeAccessControlManager:Lmeizu/security/AccessControlManager;

    move-object/from16 v17, v0

    if-nez v17, :cond_2

    const/16 v17, 0x0

    return v17

    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/content/ContentProvider;->mFlymeAccessControlManager:Lmeizu/security/AccessControlManager;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lmeizu/security/AccessControlManager;->getSwitchStatus()Z

    move-result v17

    if-nez v17, :cond_3

    const/16 v17, 0x0

    return v17

    :cond_3
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v12

    .local v12, "name":Ljava/lang/String;
    if-nez v12, :cond_4

    const/16 v17, 0x0

    return v17

    :cond_4
    const/4 v8, 0x0

    .local v8, "cpi":Landroid/content/pm/ProviderInfo;
    :try_start_0
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v17

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v18

    const/16 v19, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v19

    move/from16 v2, v18

    invoke-interface {v0, v12, v1, v2}, Landroid/content/pm/IPackageManager;->resolveContentProvider(Ljava/lang/String;II)Landroid/content/pm/ProviderInfo;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v8

    .end local v8    # "cpi":Landroid/content/pm/ProviderInfo;
    :goto_0
    if-eqz v8, :cond_12

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/content/ContentProvider;->mContext:Landroid/content/Context;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v17

    const-string v18, "ownerPackage"

    const-string v19, "string"

    iget-object v0, v8, Landroid/content/pm/ProviderInfo;->packageName:Ljava/lang/String;

    move-object/from16 v20, v0

    invoke-virtual/range {v17 .. v20}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v15

    .local v15, "ownerPackageId":I
    const/4 v14, 0x0

    .local v14, "ownerPackage":Ljava/lang/String;
    if-lez v15, :cond_5

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/content/ContentProvider;->mContext:Landroid/content/Context;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v15}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v14

    .end local v14    # "ownerPackage":Ljava/lang/String;
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/content/ContentProvider;->mFlymeAccessControlManager:Lmeizu/security/AccessControlManager;

    move-object/from16 v17, v0

    iget-object v0, v8, Landroid/content/pm/ProviderInfo;->packageName:Ljava/lang/String;

    move-object/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Lmeizu/security/AccessControlManager;->isAppUnlocked(Ljava/lang/String;)B

    move-result v7

    .local v7, "byRet":B
    const/4 v4, 0x0

    .local v4, "bRet":Z
    const/16 v17, -0x1

    move/from16 v0, v17

    if-ne v0, v7, :cond_f

    const/4 v4, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/content/ContentProvider;->mFlymeAccessControlManager:Lmeizu/security/AccessControlManager;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v14}, Lmeizu/security/AccessControlManager;->isAppUnlocked(Ljava/lang/String;)B

    move-result v7

    const/16 v17, -0x1

    move/from16 v0, v17

    if-ne v0, v7, :cond_d

    const/4 v4, 0x0

    :goto_1
    if-eqz v14, :cond_6

    move-object/from16 v0, p2

    invoke-virtual {v14, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_6

    const/4 v4, 0x0

    :cond_6
    const-string v17, "com.tencent.mm.sdk.plugin.provider"

    move-object/from16 v0, v17

    invoke-virtual {v0, v12}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_7

    const-string v17, "com.tencent.mm"

    iget-object v0, v8, Landroid/content/pm/ProviderInfo;->packageName:Ljava/lang/String;

    move-object/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_7

    const/4 v4, 0x0

    :cond_7
    const-string v17, "com.meizu.safe"

    iget-object v0, v8, Landroid/content/pm/ProviderInfo;->packageName:Ljava/lang/String;

    move-object/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_8

    const/4 v4, 0x0

    :cond_8
    const-string v17, "com.android.mms"

    iget-object v0, v8, Landroid/content/pm/ProviderInfo;->packageName:Ljava/lang/String;

    move-object/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v17

    if-nez v17, :cond_9

    const-string v17, "com.android.providers.telephony"

    iget-object v0, v8, Landroid/content/pm/ProviderInfo;->packageName:Ljava/lang/String;

    move-object/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_a

    :cond_9
    const/4 v4, 0x0

    :cond_a
    :try_start_1
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/content/ContentProvider;->mContext:Landroid/content/Context;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v17

    iget-object v0, v8, Landroid/content/pm/ProviderInfo;->packageName:Ljava/lang/String;

    move-object/from16 v18, v0

    const/16 v19, 0x80

    invoke-virtual/range {v17 .. v19}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v3

    .local v3, "ai":Landroid/content/pm/ApplicationInfo;
    if-eqz v3, :cond_b

    iget-object v0, v3, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    move-object/from16 v17, v0

    if-eqz v17, :cond_b

    iget-object v0, v3, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    move-object/from16 v17, v0

    const-string v18, "needAccessData"

    const/16 v19, 0x1

    invoke-virtual/range {v17 .. v19}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result v13

    .local v13, "needAccessData":Z
    if-nez v13, :cond_b

    const/4 v4, 0x0

    .end local v3    # "ai":Landroid/content/pm/ApplicationInfo;
    .end local v13    # "needAccessData":Z
    :cond_b
    :goto_2
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/content/ContentProvider;->mContext:Landroid/content/Context;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v17

    const-string v18, "believePackages"

    const-string v19, "array"

    iget-object v0, v8, Landroid/content/pm/ProviderInfo;->packageName:Ljava/lang/String;

    move-object/from16 v20, v0

    invoke-virtual/range {v17 .. v20}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    .local v5, "believePackageId":I
    if-lez v5, :cond_11

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/content/ContentProvider;->mContext:Landroid/content/Context;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v5}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v6

    .local v6, "believePackages":[Ljava/lang/String;
    if-eqz v6, :cond_11

    const/4 v11, 0x0

    .local v11, "i":I
    :goto_3
    array-length v0, v6

    move/from16 v17, v0

    move/from16 v0, v17

    if-ge v11, v0, :cond_11

    aget-object v17, v6, v11

    move-object/from16 v0, v17

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_c

    const/4 v4, 0x0

    :cond_c
    add-int/lit8 v11, v11, 0x1

    goto :goto_3

    .end local v5    # "believePackageId":I
    .end local v6    # "believePackages":[Ljava/lang/String;
    .end local v11    # "i":I
    :cond_d
    const/16 v17, 0x1

    move/from16 v0, v17

    if-ne v0, v7, :cond_e

    const/4 v4, 0x0

    goto/16 :goto_1

    :cond_e
    const/4 v4, 0x1

    goto/16 :goto_1

    :cond_f
    const/16 v17, 0x1

    move/from16 v0, v17

    if-ne v0, v7, :cond_10

    const/4 v4, 0x0

    goto/16 :goto_1

    :cond_10
    const/4 v4, 0x1

    goto/16 :goto_1

    .restart local v5    # "believePackageId":I
    :cond_11
    return v4

    .end local v4    # "bRet":Z
    .end local v5    # "believePackageId":I
    .end local v7    # "byRet":B
    .end local v15    # "ownerPackageId":I
    :cond_12
    const/16 v17, 0x0

    return v17

    .restart local v4    # "bRet":Z
    .restart local v7    # "byRet":B
    .restart local v15    # "ownerPackageId":I
    :catch_0
    move-exception v9

    .local v9, "e":Ljava/lang/Exception;
    goto :goto_2

    .end local v4    # "bRet":Z
    .end local v7    # "byRet":B
    .end local v9    # "e":Ljava/lang/Exception;
    .end local v15    # "ownerPackageId":I
    .restart local v8    # "cpi":Landroid/content/pm/ProviderInfo;
    :catch_1
    move-exception v10

    .local v10, "ex":Landroid/os/RemoteException;
    goto/16 :goto_0
.end method
