.class public final enum Landroid/net/apf/ApfGenerator$Register;
.super Ljava/lang/Enum;
.source "ApfGenerator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/apf/ApfGenerator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Register"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Landroid/net/apf/ApfGenerator$Register;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Landroid/net/apf/ApfGenerator$Register;

.field public static final enum R0:Landroid/net/apf/ApfGenerator$Register;

.field public static final enum R1:Landroid/net/apf/ApfGenerator$Register;


# instance fields
.field final value:I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 86
    new-instance v0, Landroid/net/apf/ApfGenerator$Register;

    const-string/jumbo v1, "R0"

    invoke-direct {v0, v1, v2, v2}, Landroid/net/apf/ApfGenerator$Register;-><init>(Ljava/lang/String;II)V

    sput-object v0, Landroid/net/apf/ApfGenerator$Register;->R0:Landroid/net/apf/ApfGenerator$Register;

    .line 87
    new-instance v0, Landroid/net/apf/ApfGenerator$Register;

    const-string/jumbo v1, "R1"

    invoke-direct {v0, v1, v3, v3}, Landroid/net/apf/ApfGenerator$Register;-><init>(Ljava/lang/String;II)V

    sput-object v0, Landroid/net/apf/ApfGenerator$Register;->R1:Landroid/net/apf/ApfGenerator$Register;

    .line 85
    const/4 v0, 0x2

    new-array v0, v0, [Landroid/net/apf/ApfGenerator$Register;

    sget-object v1, Landroid/net/apf/ApfGenerator$Register;->R0:Landroid/net/apf/ApfGenerator$Register;

    aput-object v1, v0, v2

    sget-object v1, Landroid/net/apf/ApfGenerator$Register;->R1:Landroid/net/apf/ApfGenerator$Register;

    aput-object v1, v0, v3

    sput-object v0, Landroid/net/apf/ApfGenerator$Register;->$VALUES:[Landroid/net/apf/ApfGenerator$Register;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .param p3, "value"    # I

    .prologue
    .line 91
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 92
    iput p3, p0, Landroid/net/apf/ApfGenerator$Register;->value:I

    .line 91
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Landroid/net/apf/ApfGenerator$Register;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 85
    const-class v0, Landroid/net/apf/ApfGenerator$Register;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Landroid/net/apf/ApfGenerator$Register;

    return-object v0
.end method

.method public static values()[Landroid/net/apf/ApfGenerator$Register;
    .locals 1

    .prologue
    .line 85
    sget-object v0, Landroid/net/apf/ApfGenerator$Register;->$VALUES:[Landroid/net/apf/ApfGenerator$Register;

    return-object v0
.end method
