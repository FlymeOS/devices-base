.class final Landroid/view/ViewRootImpl$SyntheticTrackballHandler;
.super Ljava/lang/Object;
.source "ViewRootImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/ViewRootImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "SyntheticTrackballHandler"
.end annotation


# instance fields
.field private mLastTime:J

.field private final mX:Landroid/view/ViewRootImpl$TrackballAxis;

.field private final mY:Landroid/view/ViewRootImpl$TrackballAxis;

.field final synthetic this$0:Landroid/view/ViewRootImpl;


# direct methods
.method constructor <init>(Landroid/view/ViewRootImpl;)V
    .locals 1
    .param p1, "this$0"    # Landroid/view/ViewRootImpl;

    .prologue
    .line 4590
    iput-object p1, p0, Landroid/view/ViewRootImpl$SyntheticTrackballHandler;->this$0:Landroid/view/ViewRootImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4591
    new-instance v0, Landroid/view/ViewRootImpl$TrackballAxis;

    invoke-direct {v0}, Landroid/view/ViewRootImpl$TrackballAxis;-><init>()V

    iput-object v0, p0, Landroid/view/ViewRootImpl$SyntheticTrackballHandler;->mX:Landroid/view/ViewRootImpl$TrackballAxis;

    .line 4592
    new-instance v0, Landroid/view/ViewRootImpl$TrackballAxis;

    invoke-direct {v0}, Landroid/view/ViewRootImpl$TrackballAxis;-><init>()V

    iput-object v0, p0, Landroid/view/ViewRootImpl$SyntheticTrackballHandler;->mY:Landroid/view/ViewRootImpl$TrackballAxis;

    .line 4590
    return-void
.end method


# virtual methods
.method public cancel(Landroid/view/MotionEvent;)V
    .locals 2
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 4698
    const-wide/32 v0, -0x80000000

    iput-wide v0, p0, Landroid/view/ViewRootImpl$SyntheticTrackballHandler;->mLastTime:J

    .line 4703
    iget-object v0, p0, Landroid/view/ViewRootImpl$SyntheticTrackballHandler;->this$0:Landroid/view/ViewRootImpl;

    iget-object v0, v0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/view/ViewRootImpl$SyntheticTrackballHandler;->this$0:Landroid/view/ViewRootImpl;

    iget-boolean v0, v0, Landroid/view/ViewRootImpl;->mAdded:Z

    if-eqz v0, :cond_0

    .line 4704
    iget-object v0, p0, Landroid/view/ViewRootImpl$SyntheticTrackballHandler;->this$0:Landroid/view/ViewRootImpl;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewRootImpl;->ensureTouchMode(Z)Z

    .line 4697
    :cond_0
    return-void
.end method

.method public process(Landroid/view/MotionEvent;)V
    .locals 31
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 4597
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    .line 4598
    .local v4, "curTime":J
    move-object/from16 v0, p0

    iget-wide v6, v0, Landroid/view/ViewRootImpl$SyntheticTrackballHandler;->mLastTime:J

    const-wide/16 v12, 0xfa

    add-long/2addr v6, v12

    cmp-long v3, v6, v4

    if-gez v3, :cond_0

    .line 4601
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/view/ViewRootImpl$SyntheticTrackballHandler;->mX:Landroid/view/ViewRootImpl$TrackballAxis;

    const/4 v6, 0x0

    invoke-virtual {v3, v6}, Landroid/view/ViewRootImpl$TrackballAxis;->reset(I)V

    .line 4602
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/view/ViewRootImpl$SyntheticTrackballHandler;->mY:Landroid/view/ViewRootImpl$TrackballAxis;

    const/4 v6, 0x0

    invoke-virtual {v3, v6}, Landroid/view/ViewRootImpl$TrackballAxis;->reset(I)V

    .line 4603
    move-object/from16 v0, p0

    iput-wide v4, v0, Landroid/view/ViewRootImpl$SyntheticTrackballHandler;->mLastTime:J

    .line 4606
    :cond_0
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v27

    .line 4607
    .local v27, "action":I
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getMetaState()I

    move-result v11

    .line 4608
    .local v11, "metaState":I
    packed-switch v27, :pswitch_data_0

    .line 4633
    :goto_0
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/view/ViewRootImpl$SyntheticTrackballHandler;->mX:Landroid/view/ViewRootImpl$TrackballAxis;

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v6

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v12

    const-string/jumbo v7, "X"

    invoke-virtual {v3, v6, v12, v13, v7}, Landroid/view/ViewRootImpl$TrackballAxis;->collect(FJLjava/lang/String;)F

    move-result v29

    .line 4634
    .local v29, "xOff":F
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/view/ViewRootImpl$SyntheticTrackballHandler;->mY:Landroid/view/ViewRootImpl$TrackballAxis;

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v6

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v12

    const-string/jumbo v7, "Y"

    invoke-virtual {v3, v6, v12, v13, v7}, Landroid/view/ViewRootImpl$TrackballAxis;->collect(FJLjava/lang/String;)F

    move-result v30

    .line 4642
    .local v30, "yOff":F
    const/4 v9, 0x0

    .line 4643
    .local v9, "keycode":I
    const/16 v28, 0x0

    .line 4644
    .local v28, "movement":I
    const/high16 v2, 0x3f800000    # 1.0f

    .line 4645
    .local v2, "accel":F
    cmpl-float v3, v29, v30

    if-lez v3, :cond_5

    .line 4646
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/view/ViewRootImpl$SyntheticTrackballHandler;->mX:Landroid/view/ViewRootImpl$TrackballAxis;

    invoke-virtual {v3}, Landroid/view/ViewRootImpl$TrackballAxis;->generate()I

    move-result v28

    .line 4647
    if-eqz v28, :cond_1

    .line 4648
    if-lez v28, :cond_4

    const/16 v9, 0x16

    .line 4650
    :goto_1
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/view/ViewRootImpl$SyntheticTrackballHandler;->mX:Landroid/view/ViewRootImpl$TrackballAxis;

    iget v2, v3, Landroid/view/ViewRootImpl$TrackballAxis;->acceleration:F

    .line 4651
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/view/ViewRootImpl$SyntheticTrackballHandler;->mY:Landroid/view/ViewRootImpl$TrackballAxis;

    const/4 v6, 0x2

    invoke-virtual {v3, v6}, Landroid/view/ViewRootImpl$TrackballAxis;->reset(I)V

    .line 4663
    :cond_1
    :goto_2
    if-eqz v9, :cond_8

    .line 4664
    if-gez v28, :cond_2

    move/from16 v0, v28

    neg-int v0, v0

    move/from16 v28, v0

    .line 4665
    :cond_2
    move/from16 v0, v28

    int-to-float v3, v0

    mul-float/2addr v3, v2

    float-to-int v0, v3

    move/from16 v26, v0

    .line 4669
    .local v26, "accelMovement":I
    move/from16 v0, v26

    move/from16 v1, v28

    if-le v0, v1, :cond_3

    .line 4672
    add-int/lit8 v28, v28, -0x1

    .line 4673
    sub-int v10, v26, v28

    .line 4674
    .local v10, "repeatCount":I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewRootImpl$SyntheticTrackballHandler;->this$0:Landroid/view/ViewRootImpl;

    move-object/from16 v16, v0

    new-instance v3, Landroid/view/KeyEvent;

    .line 4675
    const/4 v8, 0x2

    .line 4676
    const/4 v12, -0x1

    const/4 v13, 0x0

    const/16 v14, 0x400

    .line 4677
    const/16 v15, 0x101

    move-wide v6, v4

    .line 4674
    invoke-direct/range {v3 .. v15}, Landroid/view/KeyEvent;-><init>(JJIIIIIIII)V

    move-object/from16 v0, v16

    invoke-virtual {v0, v3}, Landroid/view/ViewRootImpl;->enqueueInputEvent(Landroid/view/InputEvent;)V

    .line 4679
    .end local v10    # "repeatCount":I
    :cond_3
    :goto_3
    if-lez v28, :cond_7

    .line 4682
    add-int/lit8 v28, v28, -0x1

    .line 4683
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    .line 4684
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/view/ViewRootImpl$SyntheticTrackballHandler;->this$0:Landroid/view/ViewRootImpl;

    new-instance v13, Landroid/view/KeyEvent;

    .line 4685
    const/16 v18, 0x0

    const/16 v20, 0x0

    .line 4686
    const/16 v22, -0x1

    const/16 v23, 0x0

    const/16 v24, 0x400

    .line 4687
    const/16 v25, 0x101

    move-wide v14, v4

    move-wide/from16 v16, v4

    move/from16 v19, v9

    move/from16 v21, v11

    .line 4684
    invoke-direct/range {v13 .. v25}, Landroid/view/KeyEvent;-><init>(JJIIIIIIII)V

    invoke-virtual {v3, v13}, Landroid/view/ViewRootImpl;->enqueueInputEvent(Landroid/view/InputEvent;)V

    .line 4688
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/view/ViewRootImpl$SyntheticTrackballHandler;->this$0:Landroid/view/ViewRootImpl;

    new-instance v13, Landroid/view/KeyEvent;

    .line 4689
    const/16 v18, 0x1

    const/16 v20, 0x0

    .line 4690
    const/16 v22, -0x1

    const/16 v23, 0x0

    const/16 v24, 0x400

    .line 4691
    const/16 v25, 0x101

    move-wide v14, v4

    move-wide/from16 v16, v4

    move/from16 v19, v9

    move/from16 v21, v11

    .line 4688
    invoke-direct/range {v13 .. v25}, Landroid/view/KeyEvent;-><init>(JJIIIIIIII)V

    invoke-virtual {v3, v13}, Landroid/view/ViewRootImpl;->enqueueInputEvent(Landroid/view/InputEvent;)V

    goto :goto_3

    .line 4610
    .end local v2    # "accel":F
    .end local v9    # "keycode":I
    .end local v26    # "accelMovement":I
    .end local v28    # "movement":I
    .end local v29    # "xOff":F
    .end local v30    # "yOff":F
    :pswitch_0
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/view/ViewRootImpl$SyntheticTrackballHandler;->mX:Landroid/view/ViewRootImpl$TrackballAxis;

    const/4 v6, 0x2

    invoke-virtual {v3, v6}, Landroid/view/ViewRootImpl$TrackballAxis;->reset(I)V

    .line 4611
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/view/ViewRootImpl$SyntheticTrackballHandler;->mY:Landroid/view/ViewRootImpl$TrackballAxis;

    const/4 v6, 0x2

    invoke-virtual {v3, v6}, Landroid/view/ViewRootImpl$TrackballAxis;->reset(I)V

    .line 4612
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewRootImpl$SyntheticTrackballHandler;->this$0:Landroid/view/ViewRootImpl;

    move-object/from16 v16, v0

    new-instance v3, Landroid/view/KeyEvent;

    .line 4613
    const/4 v8, 0x0

    const/16 v9, 0x17

    const/4 v10, 0x0

    .line 4614
    const/4 v12, -0x1

    const/4 v13, 0x0

    const/16 v14, 0x400

    .line 4615
    const/16 v15, 0x101

    move-wide v6, v4

    .line 4612
    invoke-direct/range {v3 .. v15}, Landroid/view/KeyEvent;-><init>(JJIIIIIIII)V

    move-object/from16 v0, v16

    invoke-virtual {v0, v3}, Landroid/view/ViewRootImpl;->enqueueInputEvent(Landroid/view/InputEvent;)V

    goto/16 :goto_0

    .line 4618
    :pswitch_1
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/view/ViewRootImpl$SyntheticTrackballHandler;->mX:Landroid/view/ViewRootImpl$TrackballAxis;

    const/4 v6, 0x2

    invoke-virtual {v3, v6}, Landroid/view/ViewRootImpl$TrackballAxis;->reset(I)V

    .line 4619
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/view/ViewRootImpl$SyntheticTrackballHandler;->mY:Landroid/view/ViewRootImpl$TrackballAxis;

    const/4 v6, 0x2

    invoke-virtual {v3, v6}, Landroid/view/ViewRootImpl$TrackballAxis;->reset(I)V

    .line 4620
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewRootImpl$SyntheticTrackballHandler;->this$0:Landroid/view/ViewRootImpl;

    move-object/from16 v16, v0

    new-instance v3, Landroid/view/KeyEvent;

    .line 4621
    const/4 v8, 0x1

    const/16 v9, 0x17

    const/4 v10, 0x0

    .line 4622
    const/4 v12, -0x1

    const/4 v13, 0x0

    const/16 v14, 0x400

    .line 4623
    const/16 v15, 0x101

    move-wide v6, v4

    .line 4620
    invoke-direct/range {v3 .. v15}, Landroid/view/KeyEvent;-><init>(JJIIIIIIII)V

    move-object/from16 v0, v16

    invoke-virtual {v0, v3}, Landroid/view/ViewRootImpl;->enqueueInputEvent(Landroid/view/InputEvent;)V

    goto/16 :goto_0

    .line 4649
    .restart local v2    # "accel":F
    .restart local v9    # "keycode":I
    .restart local v28    # "movement":I
    .restart local v29    # "xOff":F
    .restart local v30    # "yOff":F
    :cond_4
    const/16 v9, 0x15

    goto/16 :goto_1

    .line 4653
    :cond_5
    const/4 v3, 0x0

    cmpl-float v3, v30, v3

    if-lez v3, :cond_1

    .line 4654
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/view/ViewRootImpl$SyntheticTrackballHandler;->mY:Landroid/view/ViewRootImpl$TrackballAxis;

    invoke-virtual {v3}, Landroid/view/ViewRootImpl$TrackballAxis;->generate()I

    move-result v28

    .line 4655
    if-eqz v28, :cond_1

    .line 4656
    if-lez v28, :cond_6

    const/16 v9, 0x14

    .line 4658
    :goto_4
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/view/ViewRootImpl$SyntheticTrackballHandler;->mY:Landroid/view/ViewRootImpl$TrackballAxis;

    iget v2, v3, Landroid/view/ViewRootImpl$TrackballAxis;->acceleration:F

    .line 4659
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/view/ViewRootImpl$SyntheticTrackballHandler;->mX:Landroid/view/ViewRootImpl$TrackballAxis;

    const/4 v6, 0x2

    invoke-virtual {v3, v6}, Landroid/view/ViewRootImpl$TrackballAxis;->reset(I)V

    goto/16 :goto_2

    .line 4657
    :cond_6
    const/16 v9, 0x13

    goto :goto_4

    .line 4693
    .restart local v26    # "accelMovement":I
    :cond_7
    move-object/from16 v0, p0

    iput-wide v4, v0, Landroid/view/ViewRootImpl$SyntheticTrackballHandler;->mLastTime:J

    .line 4595
    .end local v26    # "accelMovement":I
    :cond_8
    return-void

    .line 4608
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
