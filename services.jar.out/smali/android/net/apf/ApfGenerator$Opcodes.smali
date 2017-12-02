.class final enum Landroid/net/apf/ApfGenerator$Opcodes;
.super Ljava/lang/Enum;
.source "ApfGenerator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/apf/ApfGenerator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "Opcodes"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Landroid/net/apf/ApfGenerator$Opcodes;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Landroid/net/apf/ApfGenerator$Opcodes;

.field public static final enum ADD:Landroid/net/apf/ApfGenerator$Opcodes;

.field public static final enum AND:Landroid/net/apf/ApfGenerator$Opcodes;

.field public static final enum DIV:Landroid/net/apf/ApfGenerator$Opcodes;

.field public static final enum EXT:Landroid/net/apf/ApfGenerator$Opcodes;

.field public static final enum JEQ:Landroid/net/apf/ApfGenerator$Opcodes;

.field public static final enum JGT:Landroid/net/apf/ApfGenerator$Opcodes;

.field public static final enum JLT:Landroid/net/apf/ApfGenerator$Opcodes;

.field public static final enum JMP:Landroid/net/apf/ApfGenerator$Opcodes;

.field public static final enum JNE:Landroid/net/apf/ApfGenerator$Opcodes;

.field public static final enum JNEBS:Landroid/net/apf/ApfGenerator$Opcodes;

.field public static final enum JSET:Landroid/net/apf/ApfGenerator$Opcodes;

.field public static final enum LABEL:Landroid/net/apf/ApfGenerator$Opcodes;

.field public static final enum LDB:Landroid/net/apf/ApfGenerator$Opcodes;

.field public static final enum LDBX:Landroid/net/apf/ApfGenerator$Opcodes;

.field public static final enum LDH:Landroid/net/apf/ApfGenerator$Opcodes;

.field public static final enum LDHX:Landroid/net/apf/ApfGenerator$Opcodes;

.field public static final enum LDW:Landroid/net/apf/ApfGenerator$Opcodes;

.field public static final enum LDWX:Landroid/net/apf/ApfGenerator$Opcodes;

.field public static final enum LI:Landroid/net/apf/ApfGenerator$Opcodes;

.field public static final enum MUL:Landroid/net/apf/ApfGenerator$Opcodes;

.field public static final enum OR:Landroid/net/apf/ApfGenerator$Opcodes;

.field public static final enum SH:Landroid/net/apf/ApfGenerator$Opcodes;


# instance fields
.field final value:I


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .prologue
    const/4 v8, 0x5

    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    .line 40
    new-instance v0, Landroid/net/apf/ApfGenerator$Opcodes;

    const-string/jumbo v1, "LABEL"

    const/4 v2, 0x0

    const/4 v3, -0x1

    invoke-direct {v0, v1, v2, v3}, Landroid/net/apf/ApfGenerator$Opcodes;-><init>(Ljava/lang/String;II)V

    sput-object v0, Landroid/net/apf/ApfGenerator$Opcodes;->LABEL:Landroid/net/apf/ApfGenerator$Opcodes;

    .line 41
    new-instance v0, Landroid/net/apf/ApfGenerator$Opcodes;

    const-string/jumbo v1, "LDB"

    invoke-direct {v0, v1, v4, v4}, Landroid/net/apf/ApfGenerator$Opcodes;-><init>(Ljava/lang/String;II)V

    sput-object v0, Landroid/net/apf/ApfGenerator$Opcodes;->LDB:Landroid/net/apf/ApfGenerator$Opcodes;

    new-instance v0, Landroid/net/apf/ApfGenerator$Opcodes;

    const-string/jumbo v1, "LDH"

    invoke-direct {v0, v1, v5, v5}, Landroid/net/apf/ApfGenerator$Opcodes;-><init>(Ljava/lang/String;II)V

    .line 42
    sput-object v0, Landroid/net/apf/ApfGenerator$Opcodes;->LDH:Landroid/net/apf/ApfGenerator$Opcodes;

    new-instance v0, Landroid/net/apf/ApfGenerator$Opcodes;

    const-string/jumbo v1, "LDW"

    invoke-direct {v0, v1, v6, v6}, Landroid/net/apf/ApfGenerator$Opcodes;-><init>(Ljava/lang/String;II)V

    .line 43
    sput-object v0, Landroid/net/apf/ApfGenerator$Opcodes;->LDW:Landroid/net/apf/ApfGenerator$Opcodes;

    new-instance v0, Landroid/net/apf/ApfGenerator$Opcodes;

    const-string/jumbo v1, "LDBX"

    invoke-direct {v0, v1, v7, v7}, Landroid/net/apf/ApfGenerator$Opcodes;-><init>(Ljava/lang/String;II)V

    .line 44
    sput-object v0, Landroid/net/apf/ApfGenerator$Opcodes;->LDBX:Landroid/net/apf/ApfGenerator$Opcodes;

    new-instance v0, Landroid/net/apf/ApfGenerator$Opcodes;

    const-string/jumbo v1, "LDHX"

    invoke-direct {v0, v1, v8, v8}, Landroid/net/apf/ApfGenerator$Opcodes;-><init>(Ljava/lang/String;II)V

    .line 45
    sput-object v0, Landroid/net/apf/ApfGenerator$Opcodes;->LDHX:Landroid/net/apf/ApfGenerator$Opcodes;

    new-instance v0, Landroid/net/apf/ApfGenerator$Opcodes;

    const-string/jumbo v1, "LDWX"

    const/4 v2, 0x6

    .line 46
    const/4 v3, 0x6

    .line 45
    invoke-direct {v0, v1, v2, v3}, Landroid/net/apf/ApfGenerator$Opcodes;-><init>(Ljava/lang/String;II)V

    .line 46
    sput-object v0, Landroid/net/apf/ApfGenerator$Opcodes;->LDWX:Landroid/net/apf/ApfGenerator$Opcodes;

    new-instance v0, Landroid/net/apf/ApfGenerator$Opcodes;

    const-string/jumbo v1, "ADD"

    const/4 v2, 0x7

    .line 47
    const/4 v3, 0x7

    .line 46
    invoke-direct {v0, v1, v2, v3}, Landroid/net/apf/ApfGenerator$Opcodes;-><init>(Ljava/lang/String;II)V

    .line 47
    sput-object v0, Landroid/net/apf/ApfGenerator$Opcodes;->ADD:Landroid/net/apf/ApfGenerator$Opcodes;

    new-instance v0, Landroid/net/apf/ApfGenerator$Opcodes;

    const-string/jumbo v1, "MUL"

    const/16 v2, 0x8

    .line 48
    const/16 v3, 0x8

    .line 47
    invoke-direct {v0, v1, v2, v3}, Landroid/net/apf/ApfGenerator$Opcodes;-><init>(Ljava/lang/String;II)V

    .line 48
    sput-object v0, Landroid/net/apf/ApfGenerator$Opcodes;->MUL:Landroid/net/apf/ApfGenerator$Opcodes;

    new-instance v0, Landroid/net/apf/ApfGenerator$Opcodes;

    const-string/jumbo v1, "DIV"

    const/16 v2, 0x9

    .line 49
    const/16 v3, 0x9

    .line 48
    invoke-direct {v0, v1, v2, v3}, Landroid/net/apf/ApfGenerator$Opcodes;-><init>(Ljava/lang/String;II)V

    .line 49
    sput-object v0, Landroid/net/apf/ApfGenerator$Opcodes;->DIV:Landroid/net/apf/ApfGenerator$Opcodes;

    new-instance v0, Landroid/net/apf/ApfGenerator$Opcodes;

    const-string/jumbo v1, "AND"

    const/16 v2, 0xa

    .line 50
    const/16 v3, 0xa

    .line 49
    invoke-direct {v0, v1, v2, v3}, Landroid/net/apf/ApfGenerator$Opcodes;-><init>(Ljava/lang/String;II)V

    .line 50
    sput-object v0, Landroid/net/apf/ApfGenerator$Opcodes;->AND:Landroid/net/apf/ApfGenerator$Opcodes;

    new-instance v0, Landroid/net/apf/ApfGenerator$Opcodes;

    const-string/jumbo v1, "OR"

    const/16 v2, 0xb

    .line 51
    const/16 v3, 0xb

    .line 50
    invoke-direct {v0, v1, v2, v3}, Landroid/net/apf/ApfGenerator$Opcodes;-><init>(Ljava/lang/String;II)V

    .line 51
    sput-object v0, Landroid/net/apf/ApfGenerator$Opcodes;->OR:Landroid/net/apf/ApfGenerator$Opcodes;

    new-instance v0, Landroid/net/apf/ApfGenerator$Opcodes;

    const-string/jumbo v1, "SH"

    const/16 v2, 0xc

    .line 52
    const/16 v3, 0xc

    .line 51
    invoke-direct {v0, v1, v2, v3}, Landroid/net/apf/ApfGenerator$Opcodes;-><init>(Ljava/lang/String;II)V

    .line 52
    sput-object v0, Landroid/net/apf/ApfGenerator$Opcodes;->SH:Landroid/net/apf/ApfGenerator$Opcodes;

    new-instance v0, Landroid/net/apf/ApfGenerator$Opcodes;

    const-string/jumbo v1, "LI"

    const/16 v2, 0xd

    .line 53
    const/16 v3, 0xd

    .line 52
    invoke-direct {v0, v1, v2, v3}, Landroid/net/apf/ApfGenerator$Opcodes;-><init>(Ljava/lang/String;II)V

    .line 53
    sput-object v0, Landroid/net/apf/ApfGenerator$Opcodes;->LI:Landroid/net/apf/ApfGenerator$Opcodes;

    new-instance v0, Landroid/net/apf/ApfGenerator$Opcodes;

    const-string/jumbo v1, "JMP"

    const/16 v2, 0xe

    .line 54
    const/16 v3, 0xe

    .line 53
    invoke-direct {v0, v1, v2, v3}, Landroid/net/apf/ApfGenerator$Opcodes;-><init>(Ljava/lang/String;II)V

    .line 54
    sput-object v0, Landroid/net/apf/ApfGenerator$Opcodes;->JMP:Landroid/net/apf/ApfGenerator$Opcodes;

    new-instance v0, Landroid/net/apf/ApfGenerator$Opcodes;

    const-string/jumbo v1, "JEQ"

    const/16 v2, 0xf

    .line 55
    const/16 v3, 0xf

    .line 54
    invoke-direct {v0, v1, v2, v3}, Landroid/net/apf/ApfGenerator$Opcodes;-><init>(Ljava/lang/String;II)V

    .line 55
    sput-object v0, Landroid/net/apf/ApfGenerator$Opcodes;->JEQ:Landroid/net/apf/ApfGenerator$Opcodes;

    new-instance v0, Landroid/net/apf/ApfGenerator$Opcodes;

    const-string/jumbo v1, "JNE"

    const/16 v2, 0x10

    .line 56
    const/16 v3, 0x10

    .line 55
    invoke-direct {v0, v1, v2, v3}, Landroid/net/apf/ApfGenerator$Opcodes;-><init>(Ljava/lang/String;II)V

    .line 56
    sput-object v0, Landroid/net/apf/ApfGenerator$Opcodes;->JNE:Landroid/net/apf/ApfGenerator$Opcodes;

    new-instance v0, Landroid/net/apf/ApfGenerator$Opcodes;

    const-string/jumbo v1, "JGT"

    const/16 v2, 0x11

    .line 57
    const/16 v3, 0x11

    .line 56
    invoke-direct {v0, v1, v2, v3}, Landroid/net/apf/ApfGenerator$Opcodes;-><init>(Ljava/lang/String;II)V

    .line 57
    sput-object v0, Landroid/net/apf/ApfGenerator$Opcodes;->JGT:Landroid/net/apf/ApfGenerator$Opcodes;

    new-instance v0, Landroid/net/apf/ApfGenerator$Opcodes;

    const-string/jumbo v1, "JLT"

    const/16 v2, 0x12

    .line 58
    const/16 v3, 0x12

    .line 57
    invoke-direct {v0, v1, v2, v3}, Landroid/net/apf/ApfGenerator$Opcodes;-><init>(Ljava/lang/String;II)V

    .line 58
    sput-object v0, Landroid/net/apf/ApfGenerator$Opcodes;->JLT:Landroid/net/apf/ApfGenerator$Opcodes;

    new-instance v0, Landroid/net/apf/ApfGenerator$Opcodes;

    const-string/jumbo v1, "JSET"

    const/16 v2, 0x13

    .line 59
    const/16 v3, 0x13

    .line 58
    invoke-direct {v0, v1, v2, v3}, Landroid/net/apf/ApfGenerator$Opcodes;-><init>(Ljava/lang/String;II)V

    .line 59
    sput-object v0, Landroid/net/apf/ApfGenerator$Opcodes;->JSET:Landroid/net/apf/ApfGenerator$Opcodes;

    new-instance v0, Landroid/net/apf/ApfGenerator$Opcodes;

    const-string/jumbo v1, "JNEBS"

    const/16 v2, 0x14

    .line 60
    const/16 v3, 0x14

    .line 59
    invoke-direct {v0, v1, v2, v3}, Landroid/net/apf/ApfGenerator$Opcodes;-><init>(Ljava/lang/String;II)V

    .line 60
    sput-object v0, Landroid/net/apf/ApfGenerator$Opcodes;->JNEBS:Landroid/net/apf/ApfGenerator$Opcodes;

    new-instance v0, Landroid/net/apf/ApfGenerator$Opcodes;

    const-string/jumbo v1, "EXT"

    const/16 v2, 0x15

    .line 61
    const/16 v3, 0x15

    .line 60
    invoke-direct {v0, v1, v2, v3}, Landroid/net/apf/ApfGenerator$Opcodes;-><init>(Ljava/lang/String;II)V

    .line 61
    sput-object v0, Landroid/net/apf/ApfGenerator$Opcodes;->EXT:Landroid/net/apf/ApfGenerator$Opcodes;

    .line 39
    const/16 v0, 0x16

    new-array v0, v0, [Landroid/net/apf/ApfGenerator$Opcodes;

    sget-object v1, Landroid/net/apf/ApfGenerator$Opcodes;->LABEL:Landroid/net/apf/ApfGenerator$Opcodes;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Landroid/net/apf/ApfGenerator$Opcodes;->LDB:Landroid/net/apf/ApfGenerator$Opcodes;

    aput-object v1, v0, v4

    sget-object v1, Landroid/net/apf/ApfGenerator$Opcodes;->LDH:Landroid/net/apf/ApfGenerator$Opcodes;

    aput-object v1, v0, v5

    sget-object v1, Landroid/net/apf/ApfGenerator$Opcodes;->LDW:Landroid/net/apf/ApfGenerator$Opcodes;

    aput-object v1, v0, v6

    sget-object v1, Landroid/net/apf/ApfGenerator$Opcodes;->LDBX:Landroid/net/apf/ApfGenerator$Opcodes;

    aput-object v1, v0, v7

    sget-object v1, Landroid/net/apf/ApfGenerator$Opcodes;->LDHX:Landroid/net/apf/ApfGenerator$Opcodes;

    aput-object v1, v0, v8

    sget-object v1, Landroid/net/apf/ApfGenerator$Opcodes;->LDWX:Landroid/net/apf/ApfGenerator$Opcodes;

    const/4 v2, 0x6

    aput-object v1, v0, v2

    sget-object v1, Landroid/net/apf/ApfGenerator$Opcodes;->ADD:Landroid/net/apf/ApfGenerator$Opcodes;

    const/4 v2, 0x7

    aput-object v1, v0, v2

    sget-object v1, Landroid/net/apf/ApfGenerator$Opcodes;->MUL:Landroid/net/apf/ApfGenerator$Opcodes;

    const/16 v2, 0x8

    aput-object v1, v0, v2

    sget-object v1, Landroid/net/apf/ApfGenerator$Opcodes;->DIV:Landroid/net/apf/ApfGenerator$Opcodes;

    const/16 v2, 0x9

    aput-object v1, v0, v2

    sget-object v1, Landroid/net/apf/ApfGenerator$Opcodes;->AND:Landroid/net/apf/ApfGenerator$Opcodes;

    const/16 v2, 0xa

    aput-object v1, v0, v2

    sget-object v1, Landroid/net/apf/ApfGenerator$Opcodes;->OR:Landroid/net/apf/ApfGenerator$Opcodes;

    const/16 v2, 0xb

    aput-object v1, v0, v2

    sget-object v1, Landroid/net/apf/ApfGenerator$Opcodes;->SH:Landroid/net/apf/ApfGenerator$Opcodes;

    const/16 v2, 0xc

    aput-object v1, v0, v2

    sget-object v1, Landroid/net/apf/ApfGenerator$Opcodes;->LI:Landroid/net/apf/ApfGenerator$Opcodes;

    const/16 v2, 0xd

    aput-object v1, v0, v2

    sget-object v1, Landroid/net/apf/ApfGenerator$Opcodes;->JMP:Landroid/net/apf/ApfGenerator$Opcodes;

    const/16 v2, 0xe

    aput-object v1, v0, v2

    sget-object v1, Landroid/net/apf/ApfGenerator$Opcodes;->JEQ:Landroid/net/apf/ApfGenerator$Opcodes;

    const/16 v2, 0xf

    aput-object v1, v0, v2

    sget-object v1, Landroid/net/apf/ApfGenerator$Opcodes;->JNE:Landroid/net/apf/ApfGenerator$Opcodes;

    const/16 v2, 0x10

    aput-object v1, v0, v2

    sget-object v1, Landroid/net/apf/ApfGenerator$Opcodes;->JGT:Landroid/net/apf/ApfGenerator$Opcodes;

    const/16 v2, 0x11

    aput-object v1, v0, v2

    sget-object v1, Landroid/net/apf/ApfGenerator$Opcodes;->JLT:Landroid/net/apf/ApfGenerator$Opcodes;

    const/16 v2, 0x12

    aput-object v1, v0, v2

    sget-object v1, Landroid/net/apf/ApfGenerator$Opcodes;->JSET:Landroid/net/apf/ApfGenerator$Opcodes;

    const/16 v2, 0x13

    aput-object v1, v0, v2

    sget-object v1, Landroid/net/apf/ApfGenerator$Opcodes;->JNEBS:Landroid/net/apf/ApfGenerator$Opcodes;

    const/16 v2, 0x14

    aput-object v1, v0, v2

    sget-object v1, Landroid/net/apf/ApfGenerator$Opcodes;->EXT:Landroid/net/apf/ApfGenerator$Opcodes;

    const/16 v2, 0x15

    aput-object v1, v0, v2

    sput-object v0, Landroid/net/apf/ApfGenerator$Opcodes;->$VALUES:[Landroid/net/apf/ApfGenerator$Opcodes;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .param p3, "value"    # I

    .prologue
    .line 65
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 66
    iput p3, p0, Landroid/net/apf/ApfGenerator$Opcodes;->value:I

    .line 65
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Landroid/net/apf/ApfGenerator$Opcodes;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 39
    const-class v0, Landroid/net/apf/ApfGenerator$Opcodes;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Landroid/net/apf/ApfGenerator$Opcodes;

    return-object v0
.end method

.method public static values()[Landroid/net/apf/ApfGenerator$Opcodes;
    .locals 1

    .prologue
    .line 39
    sget-object v0, Landroid/net/apf/ApfGenerator$Opcodes;->$VALUES:[Landroid/net/apf/ApfGenerator$Opcodes;

    return-object v0
.end method
