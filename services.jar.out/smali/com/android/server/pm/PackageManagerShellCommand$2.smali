.class Lcom/android/server/pm/PackageManagerShellCommand$2;
.super Ljava/lang/Object;
.source "PackageManagerShellCommand.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/pm/PackageManagerShellCommand;->runListInstrumentation()I
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Landroid/content/pm/InstrumentationInfo;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/pm/PackageManagerShellCommand;


# direct methods
.method constructor <init>(Lcom/android/server/pm/PackageManagerShellCommand;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/pm/PackageManagerShellCommand;

    .prologue
    .line 515
    iput-object p1, p0, Lcom/android/server/pm/PackageManagerShellCommand$2;->this$0:Lcom/android/server/pm/PackageManagerShellCommand;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Landroid/content/pm/InstrumentationInfo;Landroid/content/pm/InstrumentationInfo;)I
    .locals 2
    .param p1, "o1"    # Landroid/content/pm/InstrumentationInfo;
    .param p2, "o2"    # Landroid/content/pm/InstrumentationInfo;

    .prologue
    .line 517
    iget-object v0, p1, Landroid/content/pm/InstrumentationInfo;->targetPackage:Ljava/lang/String;

    iget-object v1, p2, Landroid/content/pm/InstrumentationInfo;->targetPackage:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1
    .param p1, "o1"    # Ljava/lang/Object;
    .param p2, "o2"    # Ljava/lang/Object;

    .prologue
    .line 516
    check-cast p1, Landroid/content/pm/InstrumentationInfo;

    .end local p1    # "o1":Ljava/lang/Object;
    check-cast p2, Landroid/content/pm/InstrumentationInfo;

    .end local p2    # "o2":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lcom/android/server/pm/PackageManagerShellCommand$2;->compare(Landroid/content/pm/InstrumentationInfo;Landroid/content/pm/InstrumentationInfo;)I

    move-result v0

    return v0
.end method
