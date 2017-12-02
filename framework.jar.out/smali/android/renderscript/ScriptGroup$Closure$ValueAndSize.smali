.class final Landroid/renderscript/ScriptGroup$Closure$ValueAndSize;
.super Ljava/lang/Object;
.source "ScriptGroup.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/renderscript/ScriptGroup$Closure;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "ValueAndSize"
.end annotation


# instance fields
.field public size:I

.field public value:J


# direct methods
.method public constructor <init>(Landroid/renderscript/RenderScript;Ljava/lang/Object;)V
    .locals 4
    .param p1, "rs"    # Landroid/renderscript/RenderScript;
    .param p2, "obj"    # Ljava/lang/Object;

    .prologue
    const/16 v3, 0x8

    const/4 v2, 0x4

    .line 299
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 300
    instance-of v0, p2, Landroid/renderscript/Allocation;

    if-eqz v0, :cond_1

    .line 301
    nop

    nop

    .end local p2    # "obj":Ljava/lang/Object;
    invoke-virtual {p2, p1}, Landroid/renderscript/BaseObj;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v0

    iput-wide v0, p0, Landroid/renderscript/ScriptGroup$Closure$ValueAndSize;->value:J

    .line 304
    const/4 v0, -0x1

    iput v0, p0, Landroid/renderscript/ScriptGroup$Closure$ValueAndSize;->size:I

    .line 299
    :cond_0
    :goto_0
    return-void

    .line 305
    .restart local p2    # "obj":Ljava/lang/Object;
    :cond_1
    instance-of v0, p2, Ljava/lang/Boolean;

    if-eqz v0, :cond_3

    .line 306
    nop

    nop

    .end local p2    # "obj":Ljava/lang/Object;
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    :goto_1
    int-to-long v0, v0

    iput-wide v0, p0, Landroid/renderscript/ScriptGroup$Closure$ValueAndSize;->value:J

    .line 307
    iput v2, p0, Landroid/renderscript/ScriptGroup$Closure$ValueAndSize;->size:I

    goto :goto_0

    .line 306
    :cond_2
    const/4 v0, 0x0

    goto :goto_1

    .line 308
    .restart local p2    # "obj":Ljava/lang/Object;
    :cond_3
    instance-of v0, p2, Ljava/lang/Integer;

    if-eqz v0, :cond_4

    .line 309
    nop

    nop

    .end local p2    # "obj":Ljava/lang/Object;
    invoke-virtual {p2}, Ljava/lang/Integer;->longValue()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/renderscript/ScriptGroup$Closure$ValueAndSize;->value:J

    .line 310
    iput v2, p0, Landroid/renderscript/ScriptGroup$Closure$ValueAndSize;->size:I

    goto :goto_0

    .line 311
    .restart local p2    # "obj":Ljava/lang/Object;
    :cond_4
    instance-of v0, p2, Ljava/lang/Long;

    if-eqz v0, :cond_5

    .line 312
    nop

    nop

    .end local p2    # "obj":Ljava/lang/Object;
    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/renderscript/ScriptGroup$Closure$ValueAndSize;->value:J

    .line 313
    iput v3, p0, Landroid/renderscript/ScriptGroup$Closure$ValueAndSize;->size:I

    goto :goto_0

    .line 314
    .restart local p2    # "obj":Ljava/lang/Object;
    :cond_5
    instance-of v0, p2, Ljava/lang/Float;

    if-eqz v0, :cond_6

    .line 315
    nop

    nop

    .end local p2    # "obj":Ljava/lang/Object;
    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v0

    int-to-long v0, v0

    iput-wide v0, p0, Landroid/renderscript/ScriptGroup$Closure$ValueAndSize;->value:J

    .line 316
    iput v2, p0, Landroid/renderscript/ScriptGroup$Closure$ValueAndSize;->size:I

    goto :goto_0

    .line 317
    .restart local p2    # "obj":Ljava/lang/Object;
    :cond_6
    instance-of v0, p2, Ljava/lang/Double;

    if-eqz v0, :cond_0

    .line 318
    nop

    nop

    .end local p2    # "obj":Ljava/lang/Object;
    invoke-virtual {p2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->doubleToRawLongBits(D)J

    move-result-wide v0

    iput-wide v0, p0, Landroid/renderscript/ScriptGroup$Closure$ValueAndSize;->value:J

    .line 319
    iput v3, p0, Landroid/renderscript/ScriptGroup$Closure$ValueAndSize;->size:I

    goto :goto_0
.end method
