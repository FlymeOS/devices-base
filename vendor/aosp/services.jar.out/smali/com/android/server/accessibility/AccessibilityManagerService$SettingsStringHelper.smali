.class Lcom/android/server/accessibility/AccessibilityManagerService$SettingsStringHelper;
.super Ljava/lang/Object;
.source "AccessibilityManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/accessibility/AccessibilityManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SettingsStringHelper"
.end annotation


# static fields
.field private static final SETTINGS_DELIMITER:Ljava/lang/String; = ":"


# instance fields
.field private mContentResolver:Landroid/content/ContentResolver;

.field private mServices:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mSettingsName:Ljava/lang/String;

.field private final mUserId:I

.field final synthetic this$0:Lcom/android/server/accessibility/AccessibilityManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/accessibility/AccessibilityManagerService;Ljava/lang/String;I)V
    .locals 5
    .param p1, "this$0"    # Lcom/android/server/accessibility/AccessibilityManagerService;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "userId"    # I

    .prologue
    .line 1916
    iput-object p1, p0, Lcom/android/server/accessibility/AccessibilityManagerService$SettingsStringHelper;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1917
    iput p3, p0, Lcom/android/server/accessibility/AccessibilityManagerService$SettingsStringHelper;->mUserId:I

    .line 1918
    iput-object p2, p0, Lcom/android/server/accessibility/AccessibilityManagerService$SettingsStringHelper;->mSettingsName:Ljava/lang/String;

    .line 1919
    invoke-static {p1}, Lcom/android/server/accessibility/AccessibilityManagerService;->-get1(Lcom/android/server/accessibility/AccessibilityManagerService;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    iput-object v3, p0, Lcom/android/server/accessibility/AccessibilityManagerService$SettingsStringHelper;->mContentResolver:Landroid/content/ContentResolver;

    .line 1921
    iget-object v3, p0, Lcom/android/server/accessibility/AccessibilityManagerService$SettingsStringHelper;->mContentResolver:Landroid/content/ContentResolver;

    iget-object v4, p0, Lcom/android/server/accessibility/AccessibilityManagerService$SettingsStringHelper;->mSettingsName:Ljava/lang/String;

    .line 1920
    invoke-static {v3, v4, p3}, Landroid/provider/Settings$Secure;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    .line 1922
    .local v2, "servicesString":Ljava/lang/String;
    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    iput-object v3, p0, Lcom/android/server/accessibility/AccessibilityManagerService$SettingsStringHelper;->mServices:Ljava/util/Set;

    .line 1923
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 1925
    new-instance v0, Landroid/text/TextUtils$SimpleStringSplitter;

    const-string/jumbo v3, ":"

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-direct {v0, v3}, Landroid/text/TextUtils$SimpleStringSplitter;-><init>(C)V

    .line 1926
    .local v0, "colonSplitter":Landroid/text/TextUtils$SimpleStringSplitter;
    invoke-virtual {v0, v2}, Landroid/text/TextUtils$SimpleStringSplitter;->setString(Ljava/lang/String;)V

    .line 1927
    :goto_0
    invoke-virtual {v0}, Landroid/text/TextUtils$SimpleStringSplitter;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1928
    invoke-virtual {v0}, Landroid/text/TextUtils$SimpleStringSplitter;->next()Ljava/lang/String;

    move-result-object v1

    .line 1929
    .local v1, "serviceName":Ljava/lang/String;
    iget-object v3, p0, Lcom/android/server/accessibility/AccessibilityManagerService$SettingsStringHelper;->mServices:Ljava/util/Set;

    invoke-interface {v3, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1916
    .end local v0    # "colonSplitter":Landroid/text/TextUtils$SimpleStringSplitter;
    .end local v1    # "serviceName":Ljava/lang/String;
    :cond_0
    return-void
.end method


# virtual methods
.method public addService(Landroid/content/ComponentName;)V
    .locals 2
    .param p1, "component"    # Landroid/content/ComponentName;

    .prologue
    .line 1935
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService$SettingsStringHelper;->mServices:Ljava/util/Set;

    invoke-virtual {p1}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1934
    return-void
.end method

.method public deleteService(Landroid/content/ComponentName;)V
    .locals 2
    .param p1, "component"    # Landroid/content/ComponentName;

    .prologue
    .line 1939
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService$SettingsStringHelper;->mServices:Ljava/util/Set;

    invoke-virtual {p1}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 1938
    return-void
.end method

.method public writeToSettings()V
    .locals 4

    .prologue
    .line 1943
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService$SettingsStringHelper;->mContentResolver:Landroid/content/ContentResolver;

    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilityManagerService$SettingsStringHelper;->mSettingsName:Ljava/lang/String;

    .line 1944
    const-string/jumbo v2, ":"

    iget-object v3, p0, Lcom/android/server/accessibility/AccessibilityManagerService$SettingsStringHelper;->mServices:Ljava/util/Set;

    invoke-static {v2, v3}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v2

    iget v3, p0, Lcom/android/server/accessibility/AccessibilityManagerService$SettingsStringHelper;->mUserId:I

    .line 1943
    invoke-static {v0, v1, v2, v3}, Landroid/provider/Settings$Secure;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z

    .line 1942
    return-void
.end method
