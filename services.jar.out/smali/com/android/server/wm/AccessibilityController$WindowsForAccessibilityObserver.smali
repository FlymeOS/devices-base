.class final Lcom/android/server/wm/AccessibilityController$WindowsForAccessibilityObserver;
.super Ljava/lang/Object;
.source "AccessibilityController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wm/AccessibilityController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "WindowsForAccessibilityObserver"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/wm/AccessibilityController$WindowsForAccessibilityObserver$MyHandler;
    }
.end annotation


# static fields
.field private static final DEBUG:Z

.field private static final LOG_TAG:Ljava/lang/String;


# instance fields
.field private final mCallback:Landroid/view/WindowManagerInternal$WindowsForAccessibilityCallback;

.field private final mContext:Landroid/content/Context;

.field private final mHandler:Landroid/os/Handler;

.field private final mOldWindows:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/view/WindowInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final mRecurringAccessibilityEventsIntervalMillis:J

.field private final mTempBinderSet:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Landroid/os/IBinder;",
            ">;"
        }
    .end annotation
.end field

.field private final mTempMatrix:Landroid/graphics/Matrix;

.field private final mTempPoint:Landroid/graphics/Point;

.field private final mTempRect:Landroid/graphics/Rect;

.field private final mTempRectF:Landroid/graphics/RectF;

.field private final mTempRegion:Landroid/graphics/Region;

.field private final mTempRegion1:Landroid/graphics/Region;

.field private final mTempWindowStates:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/android/server/wm/WindowState;",
            ">;"
        }
    .end annotation
.end field

.field private final mWindowManagerService:Lcom/android/server/wm/WindowManagerService;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 939
    const-string/jumbo v0, "WindowManager"

    .line 938
    sput-object v0, Lcom/android/server/wm/AccessibilityController$WindowsForAccessibilityObserver;->LOG_TAG:Ljava/lang/String;

    .line 937
    return-void
.end method

.method public constructor <init>(Lcom/android/server/wm/WindowManagerService;Landroid/view/WindowManagerInternal$WindowsForAccessibilityCallback;)V
    .locals 2
    .param p1, "windowManagerService"    # Lcom/android/server/wm/WindowManagerService;
    .param p2, "callback"    # Landroid/view/WindowManagerInternal$WindowsForAccessibilityCallback;

    .prologue
    .line 972
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 944
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    .line 943
    iput-object v0, p0, Lcom/android/server/wm/AccessibilityController$WindowsForAccessibilityObserver;->mTempWindowStates:Landroid/util/SparseArray;

    .line 946
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/AccessibilityController$WindowsForAccessibilityObserver;->mOldWindows:Ljava/util/List;

    .line 948
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/AccessibilityController$WindowsForAccessibilityObserver;->mTempBinderSet:Ljava/util/Set;

    .line 950
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/AccessibilityController$WindowsForAccessibilityObserver;->mTempRectF:Landroid/graphics/RectF;

    .line 952
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/AccessibilityController$WindowsForAccessibilityObserver;->mTempMatrix:Landroid/graphics/Matrix;

    .line 954
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/AccessibilityController$WindowsForAccessibilityObserver;->mTempPoint:Landroid/graphics/Point;

    .line 956
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/AccessibilityController$WindowsForAccessibilityObserver;->mTempRect:Landroid/graphics/Rect;

    .line 958
    new-instance v0, Landroid/graphics/Region;

    invoke-direct {v0}, Landroid/graphics/Region;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/AccessibilityController$WindowsForAccessibilityObserver;->mTempRegion:Landroid/graphics/Region;

    .line 960
    new-instance v0, Landroid/graphics/Region;

    invoke-direct {v0}, Landroid/graphics/Region;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/AccessibilityController$WindowsForAccessibilityObserver;->mTempRegion1:Landroid/graphics/Region;

    .line 974
    iget-object v0, p1, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    iput-object v0, p0, Lcom/android/server/wm/AccessibilityController$WindowsForAccessibilityObserver;->mContext:Landroid/content/Context;

    .line 975
    iput-object p1, p0, Lcom/android/server/wm/AccessibilityController$WindowsForAccessibilityObserver;->mWindowManagerService:Lcom/android/server/wm/WindowManagerService;

    .line 976
    iput-object p2, p0, Lcom/android/server/wm/AccessibilityController$WindowsForAccessibilityObserver;->mCallback:Landroid/view/WindowManagerInternal$WindowsForAccessibilityCallback;

    .line 977
    new-instance v0, Lcom/android/server/wm/AccessibilityController$WindowsForAccessibilityObserver$MyHandler;

    iget-object v1, p0, Lcom/android/server/wm/AccessibilityController$WindowsForAccessibilityObserver;->mWindowManagerService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    invoke-virtual {v1}, Lcom/android/server/wm/WindowManagerService$H;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/server/wm/AccessibilityController$WindowsForAccessibilityObserver$MyHandler;-><init>(Lcom/android/server/wm/AccessibilityController$WindowsForAccessibilityObserver;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/server/wm/AccessibilityController$WindowsForAccessibilityObserver;->mHandler:Landroid/os/Handler;

    .line 978
    invoke-static {}, Landroid/view/ViewConfiguration;->getSendRecurringAccessibilityEventsInterval()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/wm/AccessibilityController$WindowsForAccessibilityObserver;->mRecurringAccessibilityEventsIntervalMillis:J

    .line 980
    invoke-virtual {p0}, Lcom/android/server/wm/AccessibilityController$WindowsForAccessibilityObserver;->computeChangedWindows()V

    .line 973
    return-void
.end method

.method private cacheWindows(Ljava/util/List;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/view/WindowInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1237
    .local p1, "windows":Ljava/util/List;, "Ljava/util/List<Landroid/view/WindowInfo;>;"
    iget-object v4, p0, Lcom/android/server/wm/AccessibilityController$WindowsForAccessibilityObserver;->mOldWindows:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v3

    .line 1238
    .local v3, "oldWindowCount":I
    add-int/lit8 v0, v3, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_0

    .line 1239
    iget-object v4, p0, Lcom/android/server/wm/AccessibilityController$WindowsForAccessibilityObserver;->mOldWindows:Ljava/util/List;

    invoke-interface {v4, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/WindowInfo;

    invoke-virtual {v4}, Landroid/view/WindowInfo;->recycle()V

    .line 1238
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 1241
    :cond_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    .line 1242
    .local v2, "newWindowCount":I
    const/4 v0, 0x0

    :goto_1
    if-ge v0, v2, :cond_1

    .line 1243
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/WindowInfo;

    .line 1244
    .local v1, "newWindow":Landroid/view/WindowInfo;
    iget-object v4, p0, Lcom/android/server/wm/AccessibilityController$WindowsForAccessibilityObserver;->mOldWindows:Ljava/util/List;

    invoke-static {v1}, Landroid/view/WindowInfo;->obtain(Landroid/view/WindowInfo;)Landroid/view/WindowInfo;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1242
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1236
    .end local v1    # "newWindow":Landroid/view/WindowInfo;
    :cond_1
    return-void
.end method

.method private static clearAndRecycleWindows(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/view/WindowInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1295
    .local p0, "windows":Ljava/util/List;, "Ljava/util/List<Landroid/view/WindowInfo;>;"
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    .line 1296
    .local v1, "windowCount":I
    add-int/lit8 v0, v1, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_0

    .line 1297
    invoke-interface {p0, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/WindowInfo;

    invoke-virtual {v2}, Landroid/view/WindowInfo;->recycle()V

    .line 1296
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 1294
    :cond_0
    return-void
.end method

.method private computeWindowBoundsInScreen(Lcom/android/server/wm/WindowState;Landroid/graphics/Rect;)V
    .locals 8
    .param p1, "windowState"    # Lcom/android/server/wm/WindowState;
    .param p2, "outBounds"    # Landroid/graphics/Rect;

    .prologue
    .line 1185
    iget-object v2, p0, Lcom/android/server/wm/AccessibilityController$WindowsForAccessibilityObserver;->mTempRegion1:Landroid/graphics/Region;

    .line 1186
    .local v2, "touchableRegion":Landroid/graphics/Region;
    invoke-virtual {p1, v2}, Lcom/android/server/wm/WindowState;->getTouchableRegion(Landroid/graphics/Region;)V

    .line 1187
    iget-object v1, p0, Lcom/android/server/wm/AccessibilityController$WindowsForAccessibilityObserver;->mTempRect:Landroid/graphics/Rect;

    .line 1188
    .local v1, "touchableFrame":Landroid/graphics/Rect;
    invoke-virtual {v2, v1}, Landroid/graphics/Region;->getBounds(Landroid/graphics/Rect;)Z

    .line 1191
    iget-object v3, p0, Lcom/android/server/wm/AccessibilityController$WindowsForAccessibilityObserver;->mTempRectF:Landroid/graphics/RectF;

    .line 1192
    .local v3, "windowFrame":Landroid/graphics/RectF;
    invoke-virtual {v3, v1}, Landroid/graphics/RectF;->set(Landroid/graphics/Rect;)V

    .line 1193
    iget-object v4, p1, Lcom/android/server/wm/WindowState;->mFrame:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->left:I

    neg-int v4, v4

    int-to-float v4, v4

    iget-object v5, p1, Lcom/android/server/wm/WindowState;->mFrame:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->top:I

    neg-int v5, v5

    int-to-float v5, v5

    invoke-virtual {v3, v4, v5}, Landroid/graphics/RectF;->offset(FF)V

    .line 1196
    iget-object v0, p0, Lcom/android/server/wm/AccessibilityController$WindowsForAccessibilityObserver;->mTempMatrix:Landroid/graphics/Matrix;

    .line 1197
    .local v0, "matrix":Landroid/graphics/Matrix;
    invoke-static {p1, v0}, Lcom/android/server/wm/AccessibilityController;->-wrap0(Lcom/android/server/wm/WindowState;Landroid/graphics/Matrix;)V

    .line 1198
    invoke-virtual {v0, v3}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    .line 1201
    iget v4, v3, Landroid/graphics/RectF;->left:F

    float-to-int v4, v4

    iget v5, v3, Landroid/graphics/RectF;->top:F

    float-to-int v5, v5

    .line 1202
    iget v6, v3, Landroid/graphics/RectF;->right:F

    float-to-int v6, v6

    iget v7, v3, Landroid/graphics/RectF;->bottom:F

    float-to-int v7, v7

    .line 1201
    invoke-virtual {p2, v4, v5, v6, v7}, Landroid/graphics/Rect;->set(IIII)V

    .line 1183
    return-void
.end method

.method private static isReportedWindowType(I)Z
    .locals 2
    .param p0, "windowType"    # I

    .prologue
    const/4 v0, 0x0

    .line 1302
    const/16 v1, 0x7ed

    if-eq p0, v1, :cond_0

    .line 1303
    const/16 v1, 0x7dd

    if-eq p0, v1, :cond_0

    .line 1304
    const/16 v1, 0x7e5

    if-eq p0, v1, :cond_0

    .line 1305
    const/16 v1, 0x7ea

    if-eq p0, v1, :cond_0

    .line 1306
    const/16 v1, 0x7e0

    if-eq p0, v1, :cond_0

    .line 1307
    const/16 v1, 0x7e6

    if-eq p0, v1, :cond_0

    .line 1308
    const/16 v1, 0x7e2

    if-eq p0, v1, :cond_0

    .line 1309
    const/16 v1, 0x7eb

    if-eq p0, v1, :cond_0

    .line 1310
    const/16 v1, 0x3ec

    if-eq p0, v1, :cond_0

    .line 1311
    const/16 v1, 0x7df

    if-eq p0, v1, :cond_0

    .line 1312
    const/16 v1, 0x7ee

    if-eq p0, v1, :cond_0

    const/4 v0, 0x1

    .line 1302
    :cond_0
    return v0
.end method

.method private static obtainPopulatedWindowInfo(Lcom/android/server/wm/WindowState;Landroid/graphics/Rect;)Landroid/view/WindowInfo;
    .locals 7
    .param p0, "windowState"    # Lcom/android/server/wm/WindowState;
    .param p1, "boundsInScreen"    # Landroid/graphics/Rect;

    .prologue
    .line 1207
    invoke-static {}, Landroid/view/WindowInfo;->obtain()Landroid/view/WindowInfo;

    move-result-object v4

    .line 1208
    .local v4, "window":Landroid/view/WindowInfo;
    iget-object v5, p0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v5, v5, Landroid/view/WindowManager$LayoutParams;->type:I

    iput v5, v4, Landroid/view/WindowInfo;->type:I

    .line 1209
    iget v5, p0, Lcom/android/server/wm/WindowState;->mLayer:I

    iput v5, v4, Landroid/view/WindowInfo;->layer:I

    .line 1210
    iget-object v5, p0, Lcom/android/server/wm/WindowState;->mClient:Landroid/view/IWindow;

    invoke-interface {v5}, Landroid/view/IWindow;->asBinder()Landroid/os/IBinder;

    move-result-object v5

    iput-object v5, v4, Landroid/view/WindowInfo;->token:Landroid/os/IBinder;

    .line 1211
    iget-object v5, p0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget-object v5, v5, Landroid/view/WindowManager$LayoutParams;->accessibilityTitle:Ljava/lang/CharSequence;

    iput-object v5, v4, Landroid/view/WindowInfo;->title:Ljava/lang/CharSequence;

    .line 1212
    iget-object v5, p0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v5, v5, Landroid/view/WindowManager$LayoutParams;->accessibilityIdOfAnchor:I

    iput v5, v4, Landroid/view/WindowInfo;->accessibilityIdOfAnchor:I

    .line 1214
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mAttachedWindow:Lcom/android/server/wm/WindowState;

    .line 1215
    .local v0, "attachedWindow":Lcom/android/server/wm/WindowState;
    if-eqz v0, :cond_0

    .line 1216
    iget-object v5, v0, Lcom/android/server/wm/WindowState;->mClient:Landroid/view/IWindow;

    invoke-interface {v5}, Landroid/view/IWindow;->asBinder()Landroid/os/IBinder;

    move-result-object v5

    iput-object v5, v4, Landroid/view/WindowInfo;->parentToken:Landroid/os/IBinder;

    .line 1219
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->isFocused()Z

    move-result v5

    iput-boolean v5, v4, Landroid/view/WindowInfo;->focused:Z

    .line 1220
    iget-object v5, v4, Landroid/view/WindowInfo;->boundsInScreen:Landroid/graphics/Rect;

    invoke-virtual {v5, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 1222
    iget-object v5, p0, Lcom/android/server/wm/WindowState;->mChildWindows:Lcom/android/server/wm/WindowList;

    invoke-virtual {v5}, Lcom/android/server/wm/WindowList;->size()I

    move-result v2

    .line 1223
    .local v2, "childCount":I
    if-lez v2, :cond_2

    .line 1224
    iget-object v5, v4, Landroid/view/WindowInfo;->childTokens:Ljava/util/List;

    if-nez v5, :cond_1

    .line 1225
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v5, v4, Landroid/view/WindowInfo;->childTokens:Ljava/util/List;

    .line 1227
    :cond_1
    const/4 v3, 0x0

    .local v3, "j":I
    :goto_0
    if-ge v3, v2, :cond_2

    .line 1228
    iget-object v5, p0, Lcom/android/server/wm/WindowState;->mChildWindows:Lcom/android/server/wm/WindowList;

    invoke-virtual {v5, v3}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/WindowState;

    .line 1229
    .local v1, "child":Lcom/android/server/wm/WindowState;
    iget-object v5, v4, Landroid/view/WindowInfo;->childTokens:Ljava/util/List;

    iget-object v6, v1, Lcom/android/server/wm/WindowState;->mClient:Landroid/view/IWindow;

    invoke-interface {v6}, Landroid/view/IWindow;->asBinder()Landroid/os/IBinder;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1227
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1233
    .end local v1    # "child":Lcom/android/server/wm/WindowState;
    .end local v3    # "j":I
    :cond_2
    return-object v4
.end method

.method private populateVisibleWindowsOnScreenLocked(Landroid/util/SparseArray;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray",
            "<",
            "Lcom/android/server/wm/WindowState;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1316
    .local p1, "outWindows":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/server/wm/WindowState;>;"
    iget-object v5, p0, Lcom/android/server/wm/AccessibilityController$WindowsForAccessibilityObserver;->mWindowManagerService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v5}, Lcom/android/server/wm/WindowManagerService;->getDefaultDisplayContentLocked()Lcom/android/server/wm/DisplayContent;

    move-result-object v0

    .line 1318
    .local v0, "displayContent":Lcom/android/server/wm/DisplayContent;
    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->getWindowList()Lcom/android/server/wm/WindowList;

    move-result-object v3

    .line 1319
    .local v3, "windowList":Lcom/android/server/wm/WindowList;
    invoke-virtual {v3}, Lcom/android/server/wm/WindowList;->size()I

    move-result v2

    .line 1320
    .local v2, "windowCount":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v2, :cond_1

    .line 1321
    invoke-virtual {v3, v1}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/wm/WindowState;

    .line 1322
    .local v4, "windowState":Lcom/android/server/wm/WindowState;
    invoke-virtual {v4}, Lcom/android/server/wm/WindowState;->isVisibleLw()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 1323
    iget v5, v4, Lcom/android/server/wm/WindowState;->mLayer:I

    invoke-virtual {p1, v5, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1320
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1315
    .end local v4    # "windowState":Lcom/android/server/wm/WindowState;
    :cond_1
    return-void
.end method

.method private windowChangedNoLayer(Landroid/view/WindowInfo;Landroid/view/WindowInfo;)Z
    .locals 4
    .param p1, "oldWindow"    # Landroid/view/WindowInfo;
    .param p2, "newWindow"    # Landroid/view/WindowInfo;

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 1249
    if-ne p1, p2, :cond_0

    .line 1250
    return v3

    .line 1252
    :cond_0
    if-nez p1, :cond_1

    .line 1253
    return v2

    .line 1255
    :cond_1
    if-nez p2, :cond_2

    .line 1256
    return v2

    .line 1258
    :cond_2
    iget v0, p1, Landroid/view/WindowInfo;->type:I

    iget v1, p2, Landroid/view/WindowInfo;->type:I

    if-eq v0, v1, :cond_3

    .line 1259
    return v2

    .line 1261
    :cond_3
    iget-boolean v0, p1, Landroid/view/WindowInfo;->focused:Z

    iget-boolean v1, p2, Landroid/view/WindowInfo;->focused:Z

    if-eq v0, v1, :cond_4

    .line 1262
    return v2

    .line 1264
    :cond_4
    iget-object v0, p1, Landroid/view/WindowInfo;->token:Landroid/os/IBinder;

    if-nez v0, :cond_5

    .line 1265
    iget-object v0, p2, Landroid/view/WindowInfo;->token:Landroid/os/IBinder;

    if-eqz v0, :cond_6

    .line 1266
    return v2

    .line 1268
    :cond_5
    iget-object v0, p1, Landroid/view/WindowInfo;->token:Landroid/os/IBinder;

    iget-object v1, p2, Landroid/view/WindowInfo;->token:Landroid/os/IBinder;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    .line 1269
    return v2

    .line 1271
    :cond_6
    iget-object v0, p1, Landroid/view/WindowInfo;->parentToken:Landroid/os/IBinder;

    if-nez v0, :cond_7

    .line 1272
    iget-object v0, p2, Landroid/view/WindowInfo;->parentToken:Landroid/os/IBinder;

    if-eqz v0, :cond_8

    .line 1273
    return v2

    .line 1275
    :cond_7
    iget-object v0, p1, Landroid/view/WindowInfo;->parentToken:Landroid/os/IBinder;

    iget-object v1, p2, Landroid/view/WindowInfo;->parentToken:Landroid/os/IBinder;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_8

    .line 1276
    return v2

    .line 1278
    :cond_8
    iget-object v0, p1, Landroid/view/WindowInfo;->boundsInScreen:Landroid/graphics/Rect;

    iget-object v1, p2, Landroid/view/WindowInfo;->boundsInScreen:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_9

    .line 1279
    return v2

    .line 1281
    :cond_9
    iget-object v0, p1, Landroid/view/WindowInfo;->childTokens:Ljava/util/List;

    if-eqz v0, :cond_a

    iget-object v0, p2, Landroid/view/WindowInfo;->childTokens:Ljava/util/List;

    if-eqz v0, :cond_a

    .line 1282
    iget-object v0, p1, Landroid/view/WindowInfo;->childTokens:Ljava/util/List;

    iget-object v1, p2, Landroid/view/WindowInfo;->childTokens:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 1285
    :cond_a
    iget-object v0, p1, Landroid/view/WindowInfo;->title:Ljava/lang/CharSequence;

    iget-object v1, p2, Landroid/view/WindowInfo;->title:Ljava/lang/CharSequence;

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_c

    .line 1286
    return v2

    .line 1283
    :cond_b
    return v2

    .line 1288
    :cond_c
    iget v0, p1, Landroid/view/WindowInfo;->accessibilityIdOfAnchor:I

    iget v1, p2, Landroid/view/WindowInfo;->accessibilityIdOfAnchor:I

    if-eq v0, v1, :cond_d

    .line 1289
    return v2

    .line 1291
    :cond_d
    return v3
.end method


# virtual methods
.method public computeChangedWindows()V
    .locals 30

    .prologue
    .line 1000
    const/16 v26, 0x0

    .line 1001
    .local v26, "windowsChanged":Z
    new-instance v25, Ljava/util/ArrayList;

    invoke-direct/range {v25 .. v25}, Ljava/util/ArrayList;-><init>()V

    .line 1003
    .local v25, "windows":Ljava/util/List;, "Ljava/util/List<Landroid/view/WindowInfo;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/AccessibilityController$WindowsForAccessibilityObserver;->mWindowManagerService:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    move-object/from16 v28, v0

    monitor-enter v28

    .line 1007
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/AccessibilityController$WindowsForAccessibilityObserver;->mWindowManagerService:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mCurrentFocus:Lcom/android/server/wm/WindowState;

    move-object/from16 v27, v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v27, :cond_0

    monitor-exit v28

    .line 1008
    return-void

    .line 1012
    :cond_0
    :try_start_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/AccessibilityController$WindowsForAccessibilityObserver;->mContext:Landroid/content/Context;

    move-object/from16 v27, v0

    const-string/jumbo v29, "window"

    move-object/from16 v0, v27

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v23

    .line 1011
    check-cast v23, Landroid/view/WindowManager;

    .line 1013
    .local v23, "windowManager":Landroid/view/WindowManager;
    invoke-interface/range {v23 .. v23}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v27

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/AccessibilityController$WindowsForAccessibilityObserver;->mTempPoint:Landroid/graphics/Point;

    move-object/from16 v29, v0

    move-object/from16 v0, v27

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/view/Display;->getRealSize(Landroid/graphics/Point;)V

    .line 1014
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/AccessibilityController$WindowsForAccessibilityObserver;->mTempPoint:Landroid/graphics/Point;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    iget v14, v0, Landroid/graphics/Point;->x:I

    .line 1015
    .local v14, "screenWidth":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/AccessibilityController$WindowsForAccessibilityObserver;->mTempPoint:Landroid/graphics/Point;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    iget v13, v0, Landroid/graphics/Point;->y:I

    .line 1017
    .local v13, "screenHeight":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/AccessibilityController$WindowsForAccessibilityObserver;->mTempRegion:Landroid/graphics/Region;

    move-object/from16 v18, v0

    .line 1018
    .local v18, "unaccountedSpace":Landroid/graphics/Region;
    const/16 v27, 0x0

    const/16 v29, 0x0

    move-object/from16 v0, v18

    move/from16 v1, v27

    move/from16 v2, v29

    invoke-virtual {v0, v1, v2, v14, v13}, Landroid/graphics/Region;->set(IIII)Z

    .line 1020
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/AccessibilityController$WindowsForAccessibilityObserver;->mTempWindowStates:Landroid/util/SparseArray;

    move-object/from16 v20, v0

    .line 1021
    .local v20, "visibleWindows":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/server/wm/WindowState;>;"
    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-direct {v0, v1}, Lcom/android/server/wm/AccessibilityController$WindowsForAccessibilityObserver;->populateVisibleWindowsOnScreenLocked(Landroid/util/SparseArray;)V

    .line 1023
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wm/AccessibilityController$WindowsForAccessibilityObserver;->mTempBinderSet:Ljava/util/Set;

    .line 1024
    .local v4, "addedWindows":Ljava/util/Set;, "Ljava/util/Set<Landroid/os/IBinder;>;"
    invoke-interface {v4}, Ljava/util/Set;->clear()V

    .line 1026
    const/4 v8, 0x0

    .line 1028
    .local v8, "focusedWindowAdded":Z
    invoke-virtual/range {v20 .. v20}, Landroid/util/SparseArray;->size()I

    move-result v19

    .line 1029
    .local v19, "visibleWindowCount":I
    const/4 v15, -0x1

    .line 1030
    .local v15, "skipRemainingWindowsForTaskId":I
    new-instance v16, Ljava/util/HashSet;

    invoke-direct/range {v16 .. v16}, Ljava/util/HashSet;-><init>()V

    .line 1031
    .local v16, "skipRemainingWindowsForTasks":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/Integer;>;"
    add-int/lit8 v9, v19, -0x1

    .local v9, "i":I
    :goto_0
    if-ltz v9, :cond_6

    .line 1032
    move-object/from16 v0, v20

    invoke-virtual {v0, v9}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Lcom/android/server/wm/WindowState;

    .line 1033
    .local v24, "windowState":Lcom/android/server/wm/WindowState;
    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    iget v7, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 1034
    .local v7, "flags":I
    invoke-virtual/range {v24 .. v24}, Lcom/android/server/wm/WindowState;->getTask()Lcom/android/server/wm/Task;

    move-result-object v17

    .line 1037
    .local v17, "task":Lcom/android/server/wm/Task;
    if-eqz v17, :cond_2

    move-object/from16 v0, v17

    iget v0, v0, Lcom/android/server/wm/Task;->mTaskId:I

    move/from16 v27, v0

    invoke-static/range {v27 .. v27}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v27

    move-object/from16 v0, v16

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v27

    if-eqz v27, :cond_2

    .line 1031
    :cond_1
    :goto_1
    add-int/lit8 v9, v9, -0x1

    goto :goto_0

    .line 1042
    :cond_2
    and-int/lit8 v27, v7, 0x10

    if-nez v27, :cond_1

    .line 1047
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/wm/AccessibilityController$WindowsForAccessibilityObserver;->mTempRect:Landroid/graphics/Rect;

    .line 1048
    .local v5, "boundsInScreen":Landroid/graphics/Rect;
    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-direct {v0, v1, v5}, Lcom/android/server/wm/AccessibilityController$WindowsForAccessibilityObserver;->computeWindowBoundsInScreen(Lcom/android/server/wm/WindowState;Landroid/graphics/Rect;)V

    .line 1051
    move-object/from16 v0, v18

    invoke-virtual {v0, v5}, Landroid/graphics/Region;->quickReject(Landroid/graphics/Rect;)Z

    move-result v27

    if-nez v27, :cond_1

    .line 1056
    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    move/from16 v27, v0

    invoke-static/range {v27 .. v27}, Lcom/android/server/wm/AccessibilityController$WindowsForAccessibilityObserver;->isReportedWindowType(I)Z

    move-result v27

    if-eqz v27, :cond_3

    .line 1058
    move-object/from16 v0, v24

    invoke-static {v0, v5}, Lcom/android/server/wm/AccessibilityController$WindowsForAccessibilityObserver;->obtainPopulatedWindowInfo(Lcom/android/server/wm/WindowState;Landroid/graphics/Rect;)Landroid/view/WindowInfo;

    move-result-object v21

    .line 1059
    .local v21, "window":Landroid/view/WindowInfo;
    move-object/from16 v0, v21

    iget-object v0, v0, Landroid/view/WindowInfo;->token:Landroid/os/IBinder;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    invoke-interface {v4, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1060
    move-object/from16 v0, v25

    move-object/from16 v1, v21

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1061
    invoke-virtual/range {v24 .. v24}, Lcom/android/server/wm/WindowState;->isFocused()Z

    move-result v27

    if-eqz v27, :cond_3

    .line 1062
    const/4 v8, 0x1

    .line 1069
    .end local v21    # "window":Landroid/view/WindowInfo;
    :cond_3
    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    move/from16 v27, v0

    .line 1070
    const/16 v29, 0x7f0

    .line 1069
    move/from16 v0, v27

    move/from16 v1, v29

    if-eq v0, v1, :cond_4

    .line 1072
    sget-object v27, Landroid/graphics/Region$Op;->REVERSE_DIFFERENCE:Landroid/graphics/Region$Op;

    .line 1071
    move-object/from16 v0, v18

    move-object/from16 v1, v18

    move-object/from16 v2, v27

    invoke-virtual {v0, v5, v1, v2}, Landroid/graphics/Region;->op(Landroid/graphics/Rect;Landroid/graphics/Region;Landroid/graphics/Region$Op;)Z

    .line 1076
    :cond_4
    and-int/lit8 v27, v7, 0x28

    if-nez v27, :cond_5

    .line 1081
    invoke-virtual/range {v24 .. v24}, Lcom/android/server/wm/WindowState;->getDisplayFrameLw()Landroid/graphics/Rect;

    move-result-object v27

    .line 1082
    sget-object v29, Landroid/graphics/Region$Op;->REVERSE_DIFFERENCE:Landroid/graphics/Region$Op;

    .line 1081
    move-object/from16 v0, v18

    move-object/from16 v1, v27

    move-object/from16 v2, v18

    move-object/from16 v3, v29

    invoke-virtual {v0, v1, v2, v3}, Landroid/graphics/Region;->op(Landroid/graphics/Rect;Landroid/graphics/Region;Landroid/graphics/Region$Op;)Z

    .line 1084
    if-eqz v17, :cond_6

    .line 1087
    move-object/from16 v0, v17

    iget v0, v0, Lcom/android/server/wm/Task;->mTaskId:I

    move/from16 v27, v0

    invoke-static/range {v27 .. v27}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v27

    move-object/from16 v0, v16

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_1

    .line 1003
    .end local v4    # "addedWindows":Ljava/util/Set;, "Ljava/util/Set<Landroid/os/IBinder;>;"
    .end local v5    # "boundsInScreen":Landroid/graphics/Rect;
    .end local v7    # "flags":I
    .end local v8    # "focusedWindowAdded":Z
    .end local v9    # "i":I
    .end local v13    # "screenHeight":I
    .end local v14    # "screenWidth":I
    .end local v15    # "skipRemainingWindowsForTaskId":I
    .end local v16    # "skipRemainingWindowsForTasks":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/Integer;>;"
    .end local v17    # "task":Lcom/android/server/wm/Task;
    .end local v18    # "unaccountedSpace":Landroid/graphics/Region;
    .end local v19    # "visibleWindowCount":I
    .end local v20    # "visibleWindows":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/server/wm/WindowState;>;"
    .end local v23    # "windowManager":Landroid/view/WindowManager;
    .end local v24    # "windowState":Lcom/android/server/wm/WindowState;
    :catchall_0
    move-exception v27

    monitor-exit v28

    throw v27

    .line 1096
    .restart local v4    # "addedWindows":Ljava/util/Set;, "Ljava/util/Set<Landroid/os/IBinder;>;"
    .restart local v5    # "boundsInScreen":Landroid/graphics/Rect;
    .restart local v7    # "flags":I
    .restart local v8    # "focusedWindowAdded":Z
    .restart local v9    # "i":I
    .restart local v13    # "screenHeight":I
    .restart local v14    # "screenWidth":I
    .restart local v15    # "skipRemainingWindowsForTaskId":I
    .restart local v16    # "skipRemainingWindowsForTasks":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/Integer;>;"
    .restart local v17    # "task":Lcom/android/server/wm/Task;
    .restart local v18    # "unaccountedSpace":Landroid/graphics/Region;
    .restart local v19    # "visibleWindowCount":I
    .restart local v20    # "visibleWindows":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/server/wm/WindowState;>;"
    .restart local v23    # "windowManager":Landroid/view/WindowManager;
    .restart local v24    # "windowState":Lcom/android/server/wm/WindowState;
    :cond_5
    :try_start_2
    invoke-virtual/range {v18 .. v18}, Landroid/graphics/Region;->isEmpty()Z

    move-result v27

    if-eqz v27, :cond_1

    .line 1102
    .end local v5    # "boundsInScreen":Landroid/graphics/Rect;
    .end local v7    # "flags":I
    .end local v17    # "task":Lcom/android/server/wm/Task;
    .end local v24    # "windowState":Lcom/android/server/wm/WindowState;
    :cond_6
    if-nez v8, :cond_7

    .line 1103
    add-int/lit8 v9, v19, -0x1

    :goto_2
    if-ltz v9, :cond_7

    .line 1104
    move-object/from16 v0, v20

    invoke-virtual {v0, v9}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Lcom/android/server/wm/WindowState;

    .line 1105
    .restart local v24    # "windowState":Lcom/android/server/wm/WindowState;
    invoke-virtual/range {v24 .. v24}, Lcom/android/server/wm/WindowState;->isFocused()Z

    move-result v27

    if-eqz v27, :cond_a

    .line 1107
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/wm/AccessibilityController$WindowsForAccessibilityObserver;->mTempRect:Landroid/graphics/Rect;

    .line 1108
    .restart local v5    # "boundsInScreen":Landroid/graphics/Rect;
    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-direct {v0, v1, v5}, Lcom/android/server/wm/AccessibilityController$WindowsForAccessibilityObserver;->computeWindowBoundsInScreen(Lcom/android/server/wm/WindowState;Landroid/graphics/Rect;)V

    .line 1111
    move-object/from16 v0, v24

    invoke-static {v0, v5}, Lcom/android/server/wm/AccessibilityController$WindowsForAccessibilityObserver;->obtainPopulatedWindowInfo(Lcom/android/server/wm/WindowState;Landroid/graphics/Rect;)Landroid/view/WindowInfo;

    move-result-object v21

    .line 1113
    .restart local v21    # "window":Landroid/view/WindowInfo;
    move-object/from16 v0, v21

    iget-object v0, v0, Landroid/view/WindowInfo;->token:Landroid/os/IBinder;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    invoke-interface {v4, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1114
    move-object/from16 v0, v25

    move-object/from16 v1, v21

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1121
    .end local v5    # "boundsInScreen":Landroid/graphics/Rect;
    .end local v21    # "window":Landroid/view/WindowInfo;
    .end local v24    # "windowState":Lcom/android/server/wm/WindowState;
    :cond_7
    invoke-interface/range {v25 .. v25}, Ljava/util/List;->size()I

    move-result v22

    .line 1122
    .local v22, "windowCount":I
    const/4 v9, 0x0

    :goto_3
    move/from16 v0, v22

    if-ge v9, v0, :cond_c

    .line 1123
    move-object/from16 v0, v25

    invoke-interface {v0, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Landroid/view/WindowInfo;

    .line 1124
    .restart local v21    # "window":Landroid/view/WindowInfo;
    move-object/from16 v0, v21

    iget-object v0, v0, Landroid/view/WindowInfo;->parentToken:Landroid/os/IBinder;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    invoke-interface {v4, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v27

    if-nez v27, :cond_8

    .line 1125
    const/16 v27, 0x0

    move-object/from16 v0, v27

    move-object/from16 v1, v21

    iput-object v0, v1, Landroid/view/WindowInfo;->parentToken:Landroid/os/IBinder;

    .line 1127
    :cond_8
    move-object/from16 v0, v21

    iget-object v0, v0, Landroid/view/WindowInfo;->childTokens:Ljava/util/List;

    move-object/from16 v27, v0

    if-eqz v27, :cond_b

    .line 1128
    move-object/from16 v0, v21

    iget-object v0, v0, Landroid/view/WindowInfo;->childTokens:Ljava/util/List;

    move-object/from16 v27, v0

    invoke-interface/range {v27 .. v27}, Ljava/util/List;->size()I

    move-result v6

    .line 1129
    .local v6, "childTokenCount":I
    add-int/lit8 v10, v6, -0x1

    .local v10, "j":I
    :goto_4
    if-ltz v10, :cond_b

    .line 1130
    move-object/from16 v0, v21

    iget-object v0, v0, Landroid/view/WindowInfo;->childTokens:Ljava/util/List;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    invoke-interface {v0, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v27

    move-object/from16 v0, v27

    invoke-interface {v4, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v27

    if-nez v27, :cond_9

    .line 1131
    move-object/from16 v0, v21

    iget-object v0, v0, Landroid/view/WindowInfo;->childTokens:Ljava/util/List;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    invoke-interface {v0, v10}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 1129
    :cond_9
    add-int/lit8 v10, v10, -0x1

    goto :goto_4

    .line 1103
    .end local v6    # "childTokenCount":I
    .end local v10    # "j":I
    .end local v21    # "window":Landroid/view/WindowInfo;
    .end local v22    # "windowCount":I
    .restart local v24    # "windowState":Lcom/android/server/wm/WindowState;
    :cond_a
    add-int/lit8 v9, v9, -0x1

    goto/16 :goto_2

    .line 1122
    .end local v24    # "windowState":Lcom/android/server/wm/WindowState;
    .restart local v21    # "window":Landroid/view/WindowInfo;
    .restart local v22    # "windowCount":I
    :cond_b
    add-int/lit8 v9, v9, 0x1

    goto :goto_3

    .line 1138
    .end local v21    # "window":Landroid/view/WindowInfo;
    :cond_c
    invoke-virtual/range {v20 .. v20}, Landroid/util/SparseArray;->clear()V

    .line 1139
    invoke-interface {v4}, Ljava/util/Set;->clear()V

    .line 1142
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/AccessibilityController$WindowsForAccessibilityObserver;->mOldWindows:Ljava/util/List;

    move-object/from16 v27, v0

    invoke-interface/range {v27 .. v27}, Ljava/util/List;->size()I

    move-result v27

    invoke-interface/range {v25 .. v25}, Ljava/util/List;->size()I

    move-result v29

    move/from16 v0, v27

    move/from16 v1, v29

    if-eq v0, v1, :cond_10

    .line 1144
    const/16 v26, 0x1

    .line 1162
    :cond_d
    :goto_5
    if-eqz v26, :cond_e

    .line 1163
    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-direct {v0, v1}, Lcom/android/server/wm/AccessibilityController$WindowsForAccessibilityObserver;->cacheWindows(Ljava/util/List;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_e
    monitor-exit v28

    .line 1168
    if-eqz v26, :cond_f

    .line 1172
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/AccessibilityController$WindowsForAccessibilityObserver;->mCallback:Landroid/view/WindowManagerInternal$WindowsForAccessibilityCallback;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    move-object/from16 v1, v25

    invoke-interface {v0, v1}, Landroid/view/WindowManagerInternal$WindowsForAccessibilityCallback;->onWindowsForAccessibilityChanged(Ljava/util/List;)V

    .line 1180
    :cond_f
    invoke-static/range {v25 .. v25}, Lcom/android/server/wm/AccessibilityController$WindowsForAccessibilityObserver;->clearAndRecycleWindows(Ljava/util/List;)V

    .line 995
    return-void

    .line 1145
    :cond_10
    :try_start_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/AccessibilityController$WindowsForAccessibilityObserver;->mOldWindows:Ljava/util/List;

    move-object/from16 v27, v0

    invoke-interface/range {v27 .. v27}, Ljava/util/List;->isEmpty()Z

    move-result v27

    if-eqz v27, :cond_11

    invoke-interface/range {v25 .. v25}, Ljava/util/List;->isEmpty()Z

    move-result v27

    if-nez v27, :cond_d

    .line 1149
    :cond_11
    const/4 v9, 0x0

    :goto_6
    move/from16 v0, v22

    if-ge v9, v0, :cond_d

    .line 1150
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/AccessibilityController$WindowsForAccessibilityObserver;->mOldWindows:Ljava/util/List;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    invoke-interface {v0, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/view/WindowInfo;

    .line 1151
    .local v12, "oldWindow":Landroid/view/WindowInfo;
    move-object/from16 v0, v25

    invoke-interface {v0, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/view/WindowInfo;

    .line 1155
    .local v11, "newWindow":Landroid/view/WindowInfo;
    move-object/from16 v0, p0

    invoke-direct {v0, v12, v11}, Lcom/android/server/wm/AccessibilityController$WindowsForAccessibilityObserver;->windowChangedNoLayer(Landroid/view/WindowInfo;Landroid/view/WindowInfo;)Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result v27

    if-eqz v27, :cond_12

    .line 1156
    const/16 v26, 0x1

    .line 1157
    goto :goto_5

    .line 1149
    :cond_12
    add-int/lit8 v9, v9, 0x1

    goto :goto_6
.end method

.method public performComputeChangedWindowsNotLocked()V
    .locals 2

    .prologue
    .line 984
    iget-object v0, p0, Lcom/android/server/wm/AccessibilityController$WindowsForAccessibilityObserver;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 985
    invoke-virtual {p0}, Lcom/android/server/wm/AccessibilityController$WindowsForAccessibilityObserver;->computeChangedWindows()V

    .line 983
    return-void
.end method

.method public scheduleComputeChangedWindowsLocked()V
    .locals 4

    .prologue
    const/4 v1, 0x1

    .line 989
    iget-object v0, p0, Lcom/android/server/wm/AccessibilityController$WindowsForAccessibilityObserver;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 990
    iget-object v0, p0, Lcom/android/server/wm/AccessibilityController$WindowsForAccessibilityObserver;->mHandler:Landroid/os/Handler;

    .line 991
    iget-wide v2, p0, Lcom/android/server/wm/AccessibilityController$WindowsForAccessibilityObserver;->mRecurringAccessibilityEventsIntervalMillis:J

    .line 990
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 988
    :cond_0
    return-void
.end method
