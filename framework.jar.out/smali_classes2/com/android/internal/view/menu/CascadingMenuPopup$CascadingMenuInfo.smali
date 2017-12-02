.class Lcom/android/internal/view/menu/CascadingMenuPopup$CascadingMenuInfo;
.super Ljava/lang/Object;
.source "CascadingMenuPopup.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/view/menu/CascadingMenuPopup;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "CascadingMenuInfo"
.end annotation


# instance fields
.field public final menu:Lcom/android/internal/view/menu/MenuBuilder;

.field public final position:I

.field public final window:Landroid/widget/MenuPopupWindow;


# direct methods
.method public constructor <init>(Landroid/widget/MenuPopupWindow;Lcom/android/internal/view/menu/MenuBuilder;I)V
    .locals 0
    .param p1, "window"    # Landroid/widget/MenuPopupWindow;
    .param p2, "menu"    # Lcom/android/internal/view/menu/MenuBuilder;
    .param p3, "position"    # I

    .prologue
    .line 737
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 739
    iput-object p1, p0, Lcom/android/internal/view/menu/CascadingMenuPopup$CascadingMenuInfo;->window:Landroid/widget/MenuPopupWindow;

    .line 740
    iput-object p2, p0, Lcom/android/internal/view/menu/CascadingMenuPopup$CascadingMenuInfo;->menu:Lcom/android/internal/view/menu/MenuBuilder;

    .line 741
    iput p3, p0, Lcom/android/internal/view/menu/CascadingMenuPopup$CascadingMenuInfo;->position:I

    .line 738
    return-void
.end method


# virtual methods
.method public getListView()Landroid/widget/ListView;
    .locals 1

    .prologue
    .line 745
    iget-object v0, p0, Lcom/android/internal/view/menu/CascadingMenuPopup$CascadingMenuInfo;->window:Landroid/widget/MenuPopupWindow;

    invoke-virtual {v0}, Landroid/widget/ListPopupWindow;->getListView()Landroid/widget/ListView;

    move-result-object v0

    return-object v0
.end method
