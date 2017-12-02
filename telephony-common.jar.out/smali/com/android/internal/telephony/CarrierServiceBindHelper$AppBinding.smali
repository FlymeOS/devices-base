.class Lcom/android/internal/telephony/CarrierServiceBindHelper$AppBinding;
.super Ljava/lang/Object;
.source "CarrierServiceBindHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/CarrierServiceBindHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AppBinding"
.end annotation


# instance fields
.field private bindCount:I

.field private carrierPackage:Ljava/lang/String;

.field private carrierServiceClass:Ljava/lang/String;

.field private connection:Lcom/android/internal/telephony/CarrierServiceBindHelper$CarrierServiceConnection;

.field private lastBindStartMillis:J

.field private lastUnbindMillis:J

.field private phoneId:I

.field final synthetic this$0:Lcom/android/internal/telephony/CarrierServiceBindHelper;

.field private unbindCount:I


# direct methods
.method public constructor <init>(Lcom/android/internal/telephony/CarrierServiceBindHelper;I)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/internal/telephony/CarrierServiceBindHelper;
    .param p2, "phoneId"    # I

    .prologue
    .line 133
    iput-object p1, p0, Lcom/android/internal/telephony/CarrierServiceBindHelper$AppBinding;->this$0:Lcom/android/internal/telephony/CarrierServiceBindHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 134
    iput p2, p0, Lcom/android/internal/telephony/CarrierServiceBindHelper$AppBinding;->phoneId:I

    .line 133
    return-void
.end method


# virtual methods
.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 4
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .prologue
    .line 250
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "Carrier app binding for phone "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/telephony/CarrierServiceBindHelper$AppBinding;->phoneId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 251
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "  connection: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/CarrierServiceBindHelper$AppBinding;->connection:Lcom/android/internal/telephony/CarrierServiceBindHelper$CarrierServiceConnection;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 252
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "  bindCount: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/telephony/CarrierServiceBindHelper$AppBinding;->bindCount:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 253
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "  lastBindStartMillis: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/android/internal/telephony/CarrierServiceBindHelper$AppBinding;->lastBindStartMillis:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 254
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "  unbindCount: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/telephony/CarrierServiceBindHelper$AppBinding;->unbindCount:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 255
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "  lastUnbindMillis: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/android/internal/telephony/CarrierServiceBindHelper$AppBinding;->lastUnbindMillis:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 256
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 249
    return-void
.end method

.method public getPackage()Ljava/lang/String;
    .locals 1

    .prologue
    .line 143
    iget-object v0, p0, Lcom/android/internal/telephony/CarrierServiceBindHelper$AppBinding;->carrierPackage:Ljava/lang/String;

    return-object v0
.end method

.method public getPhoneId()I
    .locals 1

    .prologue
    .line 138
    iget v0, p0, Lcom/android/internal/telephony/CarrierServiceBindHelper$AppBinding;->phoneId:I

    return v0
.end method

.method rebind()V
    .locals 13

    .prologue
    const/4 v12, 0x0

    const/4 v11, 0x0

    .line 155
    iget-object v8, p0, Lcom/android/internal/telephony/CarrierServiceBindHelper$AppBinding;->this$0:Lcom/android/internal/telephony/CarrierServiceBindHelper;

    invoke-static {v8}, Lcom/android/internal/telephony/CarrierServiceBindHelper;->-get1(Lcom/android/internal/telephony/CarrierServiceBindHelper;)Landroid/content/Context;

    move-result-object v8

    invoke-static {v8}, Landroid/telephony/TelephonyManager;->from(Landroid/content/Context;)Landroid/telephony/TelephonyManager;

    move-result-object v8

    .line 156
    new-instance v9, Landroid/content/Intent;

    const-string/jumbo v10, "android.service.carrier.CarrierService"

    invoke-direct {v9, v10}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget v10, p0, Lcom/android/internal/telephony/CarrierServiceBindHelper$AppBinding;->phoneId:I

    .line 155
    invoke-virtual {v8, v9, v10}, Landroid/telephony/TelephonyManager;->getCarrierPackageNamesForIntentAndPhone(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v2

    .line 159
    .local v2, "carrierPackageNames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v2, :cond_0

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v8

    if-gtz v8, :cond_1

    .line 160
    :cond_0
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "No carrier app for: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, p0, Lcom/android/internal/telephony/CarrierServiceBindHelper$AppBinding;->phoneId:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/android/internal/telephony/CarrierServiceBindHelper;->-wrap0(Ljava/lang/String;)V

    .line 161
    invoke-virtual {p0}, Lcom/android/internal/telephony/CarrierServiceBindHelper$AppBinding;->unbind()V

    .line 162
    return-void

    .line 165
    :cond_1
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "Found carrier app: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/android/internal/telephony/CarrierServiceBindHelper;->-wrap0(Ljava/lang/String;)V

    .line 166
    invoke-interface {v2, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 168
    .local v0, "candidateCarrierPackage":Ljava/lang/String;
    iget-object v8, p0, Lcom/android/internal/telephony/CarrierServiceBindHelper$AppBinding;->carrierPackage:Ljava/lang/String;

    invoke-static {v8, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_2

    .line 169
    invoke-virtual {p0}, Lcom/android/internal/telephony/CarrierServiceBindHelper$AppBinding;->unbind()V

    .line 173
    :cond_2
    new-instance v4, Landroid/content/Intent;

    const-string/jumbo v8, "android.service.carrier.CarrierService"

    invoke-direct {v4, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 174
    .local v4, "carrierService":Landroid/content/Intent;
    invoke-virtual {v4, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 176
    iget-object v8, p0, Lcom/android/internal/telephony/CarrierServiceBindHelper$AppBinding;->this$0:Lcom/android/internal/telephony/CarrierServiceBindHelper;

    invoke-static {v8}, Lcom/android/internal/telephony/CarrierServiceBindHelper;->-get1(Lcom/android/internal/telephony/CarrierServiceBindHelper;)Landroid/content/Context;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v8

    .line 177
    const/16 v9, 0x80

    .line 176
    invoke-virtual {v8, v4, v9}, Landroid/content/pm/PackageManager;->resolveService(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v3

    .line 178
    .local v3, "carrierResolveInfo":Landroid/content/pm/ResolveInfo;
    const/4 v7, 0x0

    .line 179
    .local v7, "metadata":Landroid/os/Bundle;
    const/4 v1, 0x0

    .line 180
    .local v1, "candidateServiceClass":Ljava/lang/String;
    if-eqz v3, :cond_3

    .line 181
    iget-object v8, v3, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v7, v8, Landroid/content/pm/ServiceInfo;->metaData:Landroid/os/Bundle;

    .line 183
    .local v7, "metadata":Landroid/os/Bundle;
    invoke-virtual {v3}, Landroid/content/pm/ResolveInfo;->getComponentInfo()Landroid/content/pm/ComponentInfo;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/pm/ComponentInfo;->getComponentName()Landroid/content/ComponentName;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v1

    .line 187
    .end local v1    # "candidateServiceClass":Ljava/lang/String;
    .end local v7    # "metadata":Landroid/os/Bundle;
    :cond_3
    if-eqz v7, :cond_5

    .line 188
    const-string/jumbo v8, "android.service.carrier.LONG_LIVED_BINDING"

    invoke-virtual {v7, v8, v12}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v8

    if-eqz v8, :cond_5

    .line 194
    iget-object v8, p0, Lcom/android/internal/telephony/CarrierServiceBindHelper$AppBinding;->carrierServiceClass:Ljava/lang/String;

    invoke-static {v8, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_6

    .line 196
    invoke-virtual {p0}, Lcom/android/internal/telephony/CarrierServiceBindHelper$AppBinding;->unbind()V

    .line 202
    :cond_4
    iput-object v0, p0, Lcom/android/internal/telephony/CarrierServiceBindHelper$AppBinding;->carrierPackage:Ljava/lang/String;

    .line 203
    iput-object v1, p0, Lcom/android/internal/telephony/CarrierServiceBindHelper$AppBinding;->carrierServiceClass:Ljava/lang/String;

    .line 205
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "Binding to "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/android/internal/telephony/CarrierServiceBindHelper$AppBinding;->carrierPackage:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, " for phone "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, p0, Lcom/android/internal/telephony/CarrierServiceBindHelper$AppBinding;->phoneId:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/android/internal/telephony/CarrierServiceBindHelper;->-wrap0(Ljava/lang/String;)V

    .line 208
    iget v8, p0, Lcom/android/internal/telephony/CarrierServiceBindHelper$AppBinding;->bindCount:I

    add-int/lit8 v8, v8, 0x1

    iput v8, p0, Lcom/android/internal/telephony/CarrierServiceBindHelper$AppBinding;->bindCount:I

    .line 209
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    iput-wide v8, p0, Lcom/android/internal/telephony/CarrierServiceBindHelper$AppBinding;->lastBindStartMillis:J

    .line 211
    new-instance v8, Lcom/android/internal/telephony/CarrierServiceBindHelper$CarrierServiceConnection;

    iget-object v9, p0, Lcom/android/internal/telephony/CarrierServiceBindHelper$AppBinding;->this$0:Lcom/android/internal/telephony/CarrierServiceBindHelper;

    invoke-direct {v8, v9, v11}, Lcom/android/internal/telephony/CarrierServiceBindHelper$CarrierServiceConnection;-><init>(Lcom/android/internal/telephony/CarrierServiceBindHelper;Lcom/android/internal/telephony/CarrierServiceBindHelper$CarrierServiceConnection;)V

    iput-object v8, p0, Lcom/android/internal/telephony/CarrierServiceBindHelper$AppBinding;->connection:Lcom/android/internal/telephony/CarrierServiceBindHelper$CarrierServiceConnection;

    .line 215
    :try_start_0
    iget-object v8, p0, Lcom/android/internal/telephony/CarrierServiceBindHelper$AppBinding;->this$0:Lcom/android/internal/telephony/CarrierServiceBindHelper;

    invoke-static {v8}, Lcom/android/internal/telephony/CarrierServiceBindHelper;->-get1(Lcom/android/internal/telephony/CarrierServiceBindHelper;)Landroid/content/Context;

    move-result-object v8

    iget-object v9, p0, Lcom/android/internal/telephony/CarrierServiceBindHelper$AppBinding;->connection:Lcom/android/internal/telephony/CarrierServiceBindHelper$CarrierServiceConnection;

    const v10, 0x4000001

    invoke-virtual {v8, v4, v9, v10}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v8

    if-eqz v8, :cond_7

    .line 217
    return-void

    .line 189
    :cond_5
    const-string/jumbo v8, "Carrier app does not want a long lived binding"

    invoke-static {v8}, Lcom/android/internal/telephony/CarrierServiceBindHelper;->-wrap0(Ljava/lang/String;)V

    .line 190
    invoke-virtual {p0}, Lcom/android/internal/telephony/CarrierServiceBindHelper$AppBinding;->unbind()V

    .line 191
    return-void

    .line 197
    :cond_6
    iget-object v8, p0, Lcom/android/internal/telephony/CarrierServiceBindHelper$AppBinding;->connection:Lcom/android/internal/telephony/CarrierServiceBindHelper$CarrierServiceConnection;

    if-eqz v8, :cond_4

    .line 199
    return-void

    .line 220
    :cond_7
    :try_start_1
    const-string/jumbo v5, "bindService returned false"
    :try_end_1
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_0

    .line 225
    .local v5, "error":Ljava/lang/String;
    :goto_0
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "Unable to bind to "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/android/internal/telephony/CarrierServiceBindHelper$AppBinding;->carrierPackage:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, " for phone "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, p0, Lcom/android/internal/telephony/CarrierServiceBindHelper$AppBinding;->phoneId:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 226
    const-string/jumbo v9, ". Error: "

    .line 225
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/android/internal/telephony/CarrierServiceBindHelper;->-wrap0(Ljava/lang/String;)V

    .line 227
    invoke-virtual {p0}, Lcom/android/internal/telephony/CarrierServiceBindHelper$AppBinding;->unbind()V

    .line 152
    return-void

    .line 221
    .end local v5    # "error":Ljava/lang/String;
    :catch_0
    move-exception v6

    .line 222
    .local v6, "ex":Ljava/lang/SecurityException;
    invoke-virtual {v6}, Ljava/lang/SecurityException;->getMessage()Ljava/lang/String;

    move-result-object v5

    .restart local v5    # "error":Ljava/lang/String;
    goto :goto_0
.end method

.method unbind()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 231
    iget-object v0, p0, Lcom/android/internal/telephony/CarrierServiceBindHelper$AppBinding;->connection:Lcom/android/internal/telephony/CarrierServiceBindHelper$CarrierServiceConnection;

    if-nez v0, :cond_0

    .line 232
    return-void

    .line 236
    :cond_0
    iget v0, p0, Lcom/android/internal/telephony/CarrierServiceBindHelper$AppBinding;->unbindCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/internal/telephony/CarrierServiceBindHelper$AppBinding;->unbindCount:I

    .line 237
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/internal/telephony/CarrierServiceBindHelper$AppBinding;->lastUnbindMillis:J

    .line 240
    iput-object v2, p0, Lcom/android/internal/telephony/CarrierServiceBindHelper$AppBinding;->carrierPackage:Ljava/lang/String;

    .line 241
    iput-object v2, p0, Lcom/android/internal/telephony/CarrierServiceBindHelper$AppBinding;->carrierServiceClass:Ljava/lang/String;

    .line 244
    const-string/jumbo v0, "Unbinding from carrier app"

    invoke-static {v0}, Lcom/android/internal/telephony/CarrierServiceBindHelper;->-wrap0(Ljava/lang/String;)V

    .line 245
    iget-object v0, p0, Lcom/android/internal/telephony/CarrierServiceBindHelper$AppBinding;->this$0:Lcom/android/internal/telephony/CarrierServiceBindHelper;

    invoke-static {v0}, Lcom/android/internal/telephony/CarrierServiceBindHelper;->-get1(Lcom/android/internal/telephony/CarrierServiceBindHelper;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/CarrierServiceBindHelper$AppBinding;->connection:Lcom/android/internal/telephony/CarrierServiceBindHelper$CarrierServiceConnection;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 246
    iput-object v2, p0, Lcom/android/internal/telephony/CarrierServiceBindHelper$AppBinding;->connection:Lcom/android/internal/telephony/CarrierServiceBindHelper$CarrierServiceConnection;

    .line 230
    return-void
.end method
