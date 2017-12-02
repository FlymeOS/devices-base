.class Landroid/app/ActionBar$FollowOutOfActionBar;
.super Ljava/lang/Object;
.source "ActionBar.java"

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/ActionBar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "FollowOutOfActionBar"
.end annotation


# instance fields
.field private final mContainer:Landroid/view/ViewGroup;

.field private final mFocusRoot:Landroid/view/ViewGroup;

.field private final mToolbar:Landroid/view/ViewGroup;


# direct methods
.method public constructor <init>(Landroid/view/ViewGroup;Landroid/view/ViewGroup;Landroid/view/ViewGroup;)V
    .locals 0
    .param p1, "focusRoot"    # Landroid/view/ViewGroup;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "toolbar"    # Landroid/view/ViewGroup;

    .prologue
    .line 1463
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1464
    iput-object p2, p0, Landroid/app/ActionBar$FollowOutOfActionBar;->mContainer:Landroid/view/ViewGroup;

    .line 1465
    iput-object p3, p0, Landroid/app/ActionBar$FollowOutOfActionBar;->mToolbar:Landroid/view/ViewGroup;

    .line 1466
    iput-object p1, p0, Landroid/app/ActionBar$FollowOutOfActionBar;->mFocusRoot:Landroid/view/ViewGroup;

    .line 1463
    return-void
.end method


# virtual methods
.method public onFocusChange(Landroid/view/View;Z)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;
    .param p2, "hasFocus"    # Z

    .prologue
    const/4 v1, 0x0

    .line 1471
    if-nez p2, :cond_0

    .line 1472
    invoke-virtual {p1, v1}, Landroid/view/View;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 1473
    iget-object v1, p0, Landroid/app/ActionBar$FollowOutOfActionBar;->mFocusRoot:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->findFocus()Landroid/view/View;

    move-result-object v0

    .line 1474
    .local v0, "focused":Landroid/view/View;
    if-eqz v0, :cond_1

    .line 1475
    invoke-virtual {v0, p0}, Landroid/view/View;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 1470
    .end local v0    # "focused":Landroid/view/View;
    :cond_0
    :goto_0
    return-void

    .line 1477
    .restart local v0    # "focused":Landroid/view/View;
    :cond_1
    iget-object v1, p0, Landroid/app/ActionBar$FollowOutOfActionBar;->mFocusRoot:Landroid/view/ViewGroup;

    invoke-virtual {v1, p0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method public run()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 1484
    iget-object v0, p0, Landroid/app/ActionBar$FollowOutOfActionBar;->mContainer:Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    .line 1485
    iget-object v0, p0, Landroid/app/ActionBar$FollowOutOfActionBar;->mContainer:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setTouchscreenBlocksFocus(Z)V

    .line 1487
    :cond_0
    iget-object v0, p0, Landroid/app/ActionBar$FollowOutOfActionBar;->mToolbar:Landroid/view/ViewGroup;

    if-eqz v0, :cond_1

    .line 1488
    iget-object v0, p0, Landroid/app/ActionBar$FollowOutOfActionBar;->mToolbar:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setTouchscreenBlocksFocus(Z)V

    .line 1483
    :cond_1
    return-void
.end method
