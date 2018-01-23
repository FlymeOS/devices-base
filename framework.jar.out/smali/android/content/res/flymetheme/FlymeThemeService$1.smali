.class Landroid/content/res/flymetheme/FlymeThemeService$1;
.super Landroid/os/Handler;
.source "FlymeThemeService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/content/res/flymetheme/FlymeThemeService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/content/res/flymetheme/FlymeThemeService;


# direct methods
.method constructor <init>(Landroid/content/res/flymetheme/FlymeThemeService;)V
    .locals 0
    .param p1, "this$0"    # Landroid/content/res/flymetheme/FlymeThemeService;

    .prologue
    .line 58
    iput-object p1, p0, Landroid/content/res/flymetheme/FlymeThemeService$1;->this$0:Landroid/content/res/flymetheme/FlymeThemeService;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 7
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/16 v6, 0x20

    .line 61
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 62
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    .line 60
    :cond_0
    :goto_0
    return-void

    .line 64
    :pswitch_0
    iget-object v1, p0, Landroid/content/res/flymetheme/FlymeThemeService$1;->this$0:Landroid/content/res/flymetheme/FlymeThemeService;

    invoke-static {v1}, Landroid/content/res/flymetheme/FlymeThemeService;->-get0(Landroid/content/res/flymetheme/FlymeThemeService;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 65
    const-string/jumbo v1, "FlymeThemeService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "WAKE_UP_TRIAL_SERVICE_MESSAGE--"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroid/content/res/flymetheme/FlymeThemeService$1;->this$0:Landroid/content/res/flymetheme/FlymeThemeService;

    invoke-static {v3}, Landroid/content/res/flymetheme/FlymeThemeService;->-get12(Landroid/content/res/flymetheme/FlymeThemeService;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "    "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 66
    iget-object v3, p0, Landroid/content/res/flymetheme/FlymeThemeService$1;->this$0:Landroid/content/res/flymetheme/FlymeThemeService;

    invoke-static {v3}, Landroid/content/res/flymetheme/FlymeThemeService;->-get11(Landroid/content/res/flymetheme/FlymeThemeService;)Ljava/lang/String;

    move-result-object v3

    .line 65
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 66
    const-string/jumbo v3, "   "

    .line 65
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 66
    iget-object v3, p0, Landroid/content/res/flymetheme/FlymeThemeService$1;->this$0:Landroid/content/res/flymetheme/FlymeThemeService;

    invoke-static {v3}, Landroid/content/res/flymetheme/FlymeThemeService;->-get15(Landroid/content/res/flymetheme/FlymeThemeService;)J

    move-result-wide v4

    .line 65
    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 68
    :cond_1
    iget-object v1, p0, Landroid/content/res/flymetheme/FlymeThemeService$1;->this$0:Landroid/content/res/flymetheme/FlymeThemeService;

    invoke-static {v1}, Landroid/content/res/flymetheme/FlymeThemeService;->-get13(Landroid/content/res/flymetheme/FlymeThemeService;)Landroid/content/Intent;

    move-result-object v1

    .line 69
    sget-object v2, Landroid/content/res/flymetheme/FlymeThemeManager;->FLYME_THEME_TRAIL_PACKAGENAME_EXTRA:Ljava/lang/String;

    .line 70
    iget-object v3, p0, Landroid/content/res/flymetheme/FlymeThemeService$1;->this$0:Landroid/content/res/flymetheme/FlymeThemeService;

    invoke-static {v3}, Landroid/content/res/flymetheme/FlymeThemeService;->-get11(Landroid/content/res/flymetheme/FlymeThemeService;)Ljava/lang/String;

    move-result-object v3

    .line 68
    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 71
    iget-object v1, p0, Landroid/content/res/flymetheme/FlymeThemeService$1;->this$0:Landroid/content/res/flymetheme/FlymeThemeService;

    invoke-static {v1}, Landroid/content/res/flymetheme/FlymeThemeService;->-get13(Landroid/content/res/flymetheme/FlymeThemeService;)Landroid/content/Intent;

    move-result-object v1

    .line 72
    sget-object v2, Landroid/content/res/flymetheme/FlymeThemeManager;->FLYME_THEME_TRAIL_START_TIME_EXTRA:Ljava/lang/String;

    .line 73
    iget-object v3, p0, Landroid/content/res/flymetheme/FlymeThemeService$1;->this$0:Landroid/content/res/flymetheme/FlymeThemeService;

    invoke-static {v3}, Landroid/content/res/flymetheme/FlymeThemeService;->-get15(Landroid/content/res/flymetheme/FlymeThemeService;)J

    move-result-wide v4

    .line 71
    invoke-virtual {v1, v2, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 74
    iget-object v1, p0, Landroid/content/res/flymetheme/FlymeThemeService$1;->this$0:Landroid/content/res/flymetheme/FlymeThemeService;

    invoke-static {v1}, Landroid/content/res/flymetheme/FlymeThemeService;->-get13(Landroid/content/res/flymetheme/FlymeThemeService;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1, v6}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 75
    iget-object v1, p0, Landroid/content/res/flymetheme/FlymeThemeService$1;->this$0:Landroid/content/res/flymetheme/FlymeThemeService;

    invoke-static {v1}, Landroid/content/res/flymetheme/FlymeThemeService;->-get4(Landroid/content/res/flymetheme/FlymeThemeService;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Landroid/content/res/flymetheme/FlymeThemeService$1;->this$0:Landroid/content/res/flymetheme/FlymeThemeService;

    invoke-static {v2}, Landroid/content/res/flymetheme/FlymeThemeService;->-get13(Landroid/content/res/flymetheme/FlymeThemeService;)Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 76
    iget-object v1, p0, Landroid/content/res/flymetheme/FlymeThemeService$1;->this$0:Landroid/content/res/flymetheme/FlymeThemeService;

    invoke-static {v1}, Landroid/content/res/flymetheme/FlymeThemeService;->-get12(Landroid/content/res/flymetheme/FlymeThemeService;)I

    move-result v1

    if-lez v1, :cond_0

    .line 77
    iget-object v1, p0, Landroid/content/res/flymetheme/FlymeThemeService$1;->this$0:Landroid/content/res/flymetheme/FlymeThemeService;

    invoke-static {v1}, Landroid/content/res/flymetheme/FlymeThemeService;->-get9(Landroid/content/res/flymetheme/FlymeThemeService;)Landroid/os/Handler;

    move-result-object v1

    .line 78
    iget-object v2, p0, Landroid/content/res/flymetheme/FlymeThemeService$1;->this$0:Landroid/content/res/flymetheme/FlymeThemeService;

    invoke-static {v2}, Landroid/content/res/flymetheme/FlymeThemeService;->-get10(Landroid/content/res/flymetheme/FlymeThemeService;)I

    move-result v2

    int-to-long v2, v2

    .line 77
    const/16 v4, 0x3e9

    invoke-virtual {v1, v4, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 79
    iget-object v1, p0, Landroid/content/res/flymetheme/FlymeThemeService$1;->this$0:Landroid/content/res/flymetheme/FlymeThemeService;

    invoke-static {v1}, Landroid/content/res/flymetheme/FlymeThemeService;->-get12(Landroid/content/res/flymetheme/FlymeThemeService;)I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-static {v1, v2}, Landroid/content/res/flymetheme/FlymeThemeService;->-set1(Landroid/content/res/flymetheme/FlymeThemeService;I)I

    goto/16 :goto_0

    .line 83
    :pswitch_1
    iget-object v1, p0, Landroid/content/res/flymetheme/FlymeThemeService$1;->this$0:Landroid/content/res/flymetheme/FlymeThemeService;

    invoke-static {v1}, Landroid/content/res/flymetheme/FlymeThemeService;->-get0(Landroid/content/res/flymetheme/FlymeThemeService;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 84
    const-string/jumbo v1, "FlymeThemeService"

    const-string/jumbo v2, "CHANGE_WALLPAPER_MESSAGE------TimeOut"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 86
    :cond_2
    iget-object v1, p0, Landroid/content/res/flymetheme/FlymeThemeService$1;->this$0:Landroid/content/res/flymetheme/FlymeThemeService;

    invoke-static {v1}, Landroid/content/res/flymetheme/FlymeThemeService;->-get1(Landroid/content/res/flymetheme/FlymeThemeService;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 87
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Landroid/content/res/flymetheme/FlymeThemeService$1;->this$0:Landroid/content/res/flymetheme/FlymeThemeService;

    invoke-static {v1}, Landroid/content/res/flymetheme/FlymeThemeService;->-get1(Landroid/content/res/flymetheme/FlymeThemeService;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 88
    .local v0, "changeWallpaperIntent":Landroid/content/Intent;
    iget-object v1, p0, Landroid/content/res/flymetheme/FlymeThemeService$1;->this$0:Landroid/content/res/flymetheme/FlymeThemeService;

    invoke-static {v1}, Landroid/content/res/flymetheme/FlymeThemeService;->-get3(Landroid/content/res/flymetheme/FlymeThemeService;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_3

    const-string/jumbo v1, ""

    iget-object v2, p0, Landroid/content/res/flymetheme/FlymeThemeService$1;->this$0:Landroid/content/res/flymetheme/FlymeThemeService;

    invoke-static {v2}, Landroid/content/res/flymetheme/FlymeThemeService;->-get3(Landroid/content/res/flymetheme/FlymeThemeService;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 93
    :cond_3
    :goto_1
    iget-object v1, p0, Landroid/content/res/flymetheme/FlymeThemeService$1;->this$0:Landroid/content/res/flymetheme/FlymeThemeService;

    invoke-static {v1}, Landroid/content/res/flymetheme/FlymeThemeService;->-get4(Landroid/content/res/flymetheme/FlymeThemeService;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 89
    :cond_4
    iget-object v1, p0, Landroid/content/res/flymetheme/FlymeThemeService$1;->this$0:Landroid/content/res/flymetheme/FlymeThemeService;

    invoke-static {v1}, Landroid/content/res/flymetheme/FlymeThemeService;->-get3(Landroid/content/res/flymetheme/FlymeThemeService;)Ljava/lang/String;

    move-result-object v1

    .line 90
    iget-object v2, p0, Landroid/content/res/flymetheme/FlymeThemeService$1;->this$0:Landroid/content/res/flymetheme/FlymeThemeService;

    invoke-static {v2}, Landroid/content/res/flymetheme/FlymeThemeService;->-get2(Landroid/content/res/flymetheme/FlymeThemeService;)J

    move-result-wide v2

    .line 89
    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 91
    invoke-virtual {v0, v6}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    goto :goto_1

    .line 97
    .end local v0    # "changeWallpaperIntent":Landroid/content/Intent;
    :pswitch_2
    iget-object v1, p0, Landroid/content/res/flymetheme/FlymeThemeService$1;->this$0:Landroid/content/res/flymetheme/FlymeThemeService;

    invoke-static {v1}, Landroid/content/res/flymetheme/FlymeThemeService;->-get0(Landroid/content/res/flymetheme/FlymeThemeService;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 98
    const-string/jumbo v1, "FlymeThemeService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "WAKE_UP_FONT_TRIAL_SERVICE_MESSAGE--"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroid/content/res/flymetheme/FlymeThemeService$1;->this$0:Landroid/content/res/flymetheme/FlymeThemeService;

    invoke-static {v3}, Landroid/content/res/flymetheme/FlymeThemeService;->-get7(Landroid/content/res/flymetheme/FlymeThemeService;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 99
    const-string/jumbo v3, "    "

    .line 98
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 99
    iget-object v3, p0, Landroid/content/res/flymetheme/FlymeThemeService$1;->this$0:Landroid/content/res/flymetheme/FlymeThemeService;

    invoke-static {v3}, Landroid/content/res/flymetheme/FlymeThemeService;->-get6(Landroid/content/res/flymetheme/FlymeThemeService;)Ljava/lang/String;

    move-result-object v3

    .line 98
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 99
    const-string/jumbo v3, "   "

    .line 98
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 99
    iget-object v3, p0, Landroid/content/res/flymetheme/FlymeThemeService$1;->this$0:Landroid/content/res/flymetheme/FlymeThemeService;

    invoke-static {v3}, Landroid/content/res/flymetheme/FlymeThemeService;->-get14(Landroid/content/res/flymetheme/FlymeThemeService;)J

    move-result-wide v4

    .line 98
    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 101
    :cond_5
    iget-object v1, p0, Landroid/content/res/flymetheme/FlymeThemeService$1;->this$0:Landroid/content/res/flymetheme/FlymeThemeService;

    invoke-static {v1}, Landroid/content/res/flymetheme/FlymeThemeService;->-get8(Landroid/content/res/flymetheme/FlymeThemeService;)Landroid/content/Intent;

    move-result-object v1

    .line 102
    sget-object v2, Landroid/content/res/flymetheme/FlymeThemeManager;->FLYME_FONT_TRAIL_PACKAGENAME_EXTRA:Ljava/lang/String;

    iget-object v3, p0, Landroid/content/res/flymetheme/FlymeThemeService$1;->this$0:Landroid/content/res/flymetheme/FlymeThemeService;

    invoke-static {v3}, Landroid/content/res/flymetheme/FlymeThemeService;->-get6(Landroid/content/res/flymetheme/FlymeThemeService;)Ljava/lang/String;

    move-result-object v3

    .line 101
    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 103
    iget-object v1, p0, Landroid/content/res/flymetheme/FlymeThemeService$1;->this$0:Landroid/content/res/flymetheme/FlymeThemeService;

    invoke-static {v1}, Landroid/content/res/flymetheme/FlymeThemeService;->-get8(Landroid/content/res/flymetheme/FlymeThemeService;)Landroid/content/Intent;

    move-result-object v1

    sget-object v2, Landroid/content/res/flymetheme/FlymeThemeManager;->FLYME_FONT_TRAIL_START_TIME_EXTRA:Ljava/lang/String;

    .line 104
    iget-object v3, p0, Landroid/content/res/flymetheme/FlymeThemeService$1;->this$0:Landroid/content/res/flymetheme/FlymeThemeService;

    invoke-static {v3}, Landroid/content/res/flymetheme/FlymeThemeService;->-get14(Landroid/content/res/flymetheme/FlymeThemeService;)J

    move-result-wide v4

    .line 103
    invoke-virtual {v1, v2, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 105
    iget-object v1, p0, Landroid/content/res/flymetheme/FlymeThemeService$1;->this$0:Landroid/content/res/flymetheme/FlymeThemeService;

    invoke-static {v1}, Landroid/content/res/flymetheme/FlymeThemeService;->-get8(Landroid/content/res/flymetheme/FlymeThemeService;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1, v6}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 106
    iget-object v1, p0, Landroid/content/res/flymetheme/FlymeThemeService$1;->this$0:Landroid/content/res/flymetheme/FlymeThemeService;

    invoke-static {v1}, Landroid/content/res/flymetheme/FlymeThemeService;->-get4(Landroid/content/res/flymetheme/FlymeThemeService;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Landroid/content/res/flymetheme/FlymeThemeService$1;->this$0:Landroid/content/res/flymetheme/FlymeThemeService;

    invoke-static {v2}, Landroid/content/res/flymetheme/FlymeThemeService;->-get8(Landroid/content/res/flymetheme/FlymeThemeService;)Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 107
    iget-object v1, p0, Landroid/content/res/flymetheme/FlymeThemeService$1;->this$0:Landroid/content/res/flymetheme/FlymeThemeService;

    invoke-static {v1}, Landroid/content/res/flymetheme/FlymeThemeService;->-get7(Landroid/content/res/flymetheme/FlymeThemeService;)I

    move-result v1

    if-lez v1, :cond_0

    .line 108
    iget-object v1, p0, Landroid/content/res/flymetheme/FlymeThemeService$1;->this$0:Landroid/content/res/flymetheme/FlymeThemeService;

    invoke-static {v1}, Landroid/content/res/flymetheme/FlymeThemeService;->-get9(Landroid/content/res/flymetheme/FlymeThemeService;)Landroid/os/Handler;

    move-result-object v1

    .line 109
    iget-object v2, p0, Landroid/content/res/flymetheme/FlymeThemeService$1;->this$0:Landroid/content/res/flymetheme/FlymeThemeService;

    invoke-static {v2}, Landroid/content/res/flymetheme/FlymeThemeService;->-get5(Landroid/content/res/flymetheme/FlymeThemeService;)I

    move-result v2

    int-to-long v2, v2

    .line 108
    const/16 v4, 0x3eb

    invoke-virtual {v1, v4, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 110
    iget-object v1, p0, Landroid/content/res/flymetheme/FlymeThemeService$1;->this$0:Landroid/content/res/flymetheme/FlymeThemeService;

    invoke-static {v1}, Landroid/content/res/flymetheme/FlymeThemeService;->-get7(Landroid/content/res/flymetheme/FlymeThemeService;)I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-static {v1, v2}, Landroid/content/res/flymetheme/FlymeThemeService;->-set0(Landroid/content/res/flymetheme/FlymeThemeService;I)I

    goto/16 :goto_0

    .line 62
    :pswitch_data_0
    .packed-switch 0x3e9
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
