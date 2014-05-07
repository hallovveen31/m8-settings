.class Lcom/android/settings/wifi/WifiStatusReceiver$DataConnection;
.super Landroid/os/AsyncTask;
.source "WifiStatusReceiver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/wifi/WifiStatusReceiver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DataConnection"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/String;",
        "Ljava/lang/Integer;",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/wifi/WifiStatusReceiver;


# direct methods
.method private constructor <init>(Lcom/android/settings/wifi/WifiStatusReceiver;)V
    .locals 0
    .parameter

    .prologue
    .line 536
    iput-object p1, p0, Lcom/android/settings/wifi/WifiStatusReceiver$DataConnection;->this$0:Lcom/android/settings/wifi/WifiStatusReceiver;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/settings/wifi/WifiStatusReceiver;Lcom/android/settings/wifi/WifiStatusReceiver$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 536
    invoke-direct {p0, p1}, Lcom/android/settings/wifi/WifiStatusReceiver$DataConnection;-><init>(Lcom/android/settings/wifi/WifiStatusReceiver;)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 536
    check-cast p1, [Ljava/lang/String;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/settings/wifi/WifiStatusReceiver$DataConnection;->doInBackground([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/String;)Ljava/lang/String;
    .locals 23
    .parameter "urls"

    .prologue
    .line 539
    const-string v19, "Android-Wifi/0.1"

    invoke-static/range {v19 .. v19}, Landroid/net/http/AndroidHttpClient;->newInstance(Ljava/lang/String;)Landroid/net/http/AndroidHttpClient;

    move-result-object v3

    .line 540
    .local v3, client:Landroid/net/http/AndroidHttpClient;
    new-instance v12, Lorg/apache/http/client/methods/HttpGet;

    const-string v19, "http://clients3.google.com/generate_204"

    move-object/from16 v0, v19

    invoke-direct {v12, v0}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V

    .line 542
    .local v12, request:Lorg/apache/http/client/methods/HttpGet;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiStatusReceiver$DataConnection;->this$0:Lcom/android/settings/wifi/WifiStatusReceiver;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiStatusReceiver$DataConnection;->this$0:Lcom/android/settings/wifi/WifiStatusReceiver;

    move-object/from16 v20, v0

    #getter for: Lcom/android/settings/wifi/WifiStatusReceiver;->mContext:Landroid/content/Context;
    invoke-static/range {v20 .. v20}, Lcom/android/settings/wifi/WifiStatusReceiver;->access$700(Lcom/android/settings/wifi/WifiStatusReceiver;)Landroid/content/Context;

    move-result-object v20

    invoke-static/range {v20 .. v20}, Lcom/android/settings/wifi/WISPrManager;->getInstance(Landroid/content/Context;)Lcom/android/settings/wifi/WISPrManager;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Lcom/android/settings/wifi/WISPrManager;->isAutoLoginOn()Z

    move-result v20

    #setter for: Lcom/android/settings/wifi/WifiStatusReceiver;->mAutoWISPr:Z
    invoke-static/range {v19 .. v20}, Lcom/android/settings/wifi/WifiStatusReceiver;->access$602(Lcom/android/settings/wifi/WifiStatusReceiver;Z)Z

    .line 544
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiStatusReceiver$DataConnection;->this$0:Lcom/android/settings/wifi/WifiStatusReceiver;

    move-object/from16 v19, v0

    #calls: Lcom/android/settings/wifi/WifiStatusReceiver;->loadAccountInfo()V
    invoke-static/range {v19 .. v19}, Lcom/android/settings/wifi/WifiStatusReceiver;->access$800(Lcom/android/settings/wifi/WifiStatusReceiver;)V

    .line 547
    :try_start_0
    invoke-virtual {v3, v12}, Landroid/net/http/AndroidHttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v13

    .line 548
    .local v13, response:Lorg/apache/http/HttpResponse;
    invoke-interface {v13}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v19

    invoke-interface/range {v19 .. v19}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v15

    .line 549
    .local v15, statusCode:I
    const-string v19, "WifiStatusReceiver"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "statusCode: "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 550
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiStatusReceiver$DataConnection;->this$0:Lcom/android/settings/wifi/WifiStatusReceiver;

    move-object/from16 v19, v0

    #getter for: Lcom/android/settings/wifi/WifiStatusReceiver;->DEBUG:Z
    invoke-static/range {v19 .. v19}, Lcom/android/settings/wifi/WifiStatusReceiver;->access$300(Lcom/android/settings/wifi/WifiStatusReceiver;)Z

    move-result v19

    if-eqz v19, :cond_0

    .line 551
    invoke-interface {v13}, Lorg/apache/http/HttpResponse;->getAllHeaders()[Lorg/apache/http/Header;

    move-result-object v7

    .line 552
    .local v7, headers:[Lorg/apache/http/Header;
    const/4 v9, 0x0

    .local v9, i:I
    :goto_0
    array-length v0, v7

    move/from16 v19, v0

    move/from16 v0, v19

    if-ge v9, v0, :cond_0

    .line 553
    const-string v19, "WifiStatusReceiver"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "header_"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, " name:"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    aget-object v21, v7, v9

    invoke-interface/range {v21 .. v21}, Lorg/apache/http/Header;->getName()Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 554
    const-string v19, "WifiStatusReceiver"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "header_"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, " value:"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    aget-object v21, v7, v9

    invoke-interface/range {v21 .. v21}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 552
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    .line 558
    .end local v7           #headers:[Lorg/apache/http/Header;
    .end local v9           #i:I
    :cond_0
    const/16 v19, 0x12d

    move/from16 v0, v19

    if-eq v15, v0, :cond_1

    const/16 v19, 0x12e

    move/from16 v0, v19

    if-eq v15, v0, :cond_1

    const/16 v19, 0x12f

    move/from16 v0, v19

    if-eq v15, v0, :cond_1

    const/16 v19, 0x133

    move/from16 v0, v19

    if-ne v15, v0, :cond_a

    .line 560
    :cond_1
    const-string v19, "Location"

    move-object/from16 v0, v19

    invoke-interface {v13, v0}, Lorg/apache/http/HttpResponse;->getFirstHeader(Ljava/lang/String;)Lorg/apache/http/Header;

    move-result-object v6

    .line 561
    .local v6, header:Lorg/apache/http/Header;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiStatusReceiver$DataConnection;->this$0:Lcom/android/settings/wifi/WifiStatusReceiver;

    move-object/from16 v19, v0

    #getter for: Lcom/android/settings/wifi/WifiStatusReceiver;->DEBUG:Z
    invoke-static/range {v19 .. v19}, Lcom/android/settings/wifi/WifiStatusReceiver;->access$300(Lcom/android/settings/wifi/WifiStatusReceiver;)Z

    move-result v19

    if-eqz v19, :cond_2

    const-string v19, "WifiStatusReceiver"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "header="

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 562
    :cond_2
    if-eqz v6, :cond_6

    .line 563
    invoke-interface {v6}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v11

    .line 564
    .local v11, redirectTo:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiStatusReceiver$DataConnection;->this$0:Lcom/android/settings/wifi/WifiStatusReceiver;

    move-object/from16 v19, v0

    #getter for: Lcom/android/settings/wifi/WifiStatusReceiver;->DEBUG:Z
    invoke-static/range {v19 .. v19}, Lcom/android/settings/wifi/WifiStatusReceiver;->access$300(Lcom/android/settings/wifi/WifiStatusReceiver;)Z

    move-result v19

    if-eqz v19, :cond_3

    const-string v19, "WifiStatusReceiver"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "redirectTo="

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 565
    :cond_3
    const/4 v8, 0x0

    .line 566
    .local v8, host:Ljava/lang/String;
    if-eqz v11, :cond_4

    .line 567
    invoke-static {v11}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v16

    .line 568
    .local v16, uri:Landroid/net/Uri;
    invoke-virtual/range {v16 .. v16}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v8

    .line 569
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiStatusReceiver$DataConnection;->this$0:Lcom/android/settings/wifi/WifiStatusReceiver;

    move-object/from16 v19, v0

    #getter for: Lcom/android/settings/wifi/WifiStatusReceiver;->DEBUG:Z
    invoke-static/range {v19 .. v19}, Lcom/android/settings/wifi/WifiStatusReceiver;->access$300(Lcom/android/settings/wifi/WifiStatusReceiver;)Z

    move-result v19

    if-eqz v19, :cond_4

    const-string v19, "WifiStatusReceiver"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "host="

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 571
    .end local v16           #uri:Landroid/net/Uri;
    :cond_4
    if-eqz v11, :cond_6

    const-string v19, "http://www.google.com"

    move-object/from16 v0, v19

    invoke-virtual {v11, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v19

    if-nez v19, :cond_6

    if-eqz v8, :cond_5

    const-string v19, "google"

    move-object/from16 v0, v19

    invoke-virtual {v8, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v19

    if-nez v19, :cond_6

    .line 572
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiStatusReceiver$DataConnection;->this$0:Lcom/android/settings/wifi/WifiStatusReceiver;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    #setter for: Lcom/android/settings/wifi/WifiStatusReceiver;->mTempRedirectURL:Ljava/lang/String;
    invoke-static {v0, v11}, Lcom/android/settings/wifi/WifiStatusReceiver;->access$902(Lcom/android/settings/wifi/WifiStatusReceiver;Ljava/lang/String;)Ljava/lang/String;

    .line 573
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiStatusReceiver$DataConnection;->this$0:Lcom/android/settings/wifi/WifiStatusReceiver;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiStatusReceiver$DataConnection;->this$0:Lcom/android/settings/wifi/WifiStatusReceiver;

    move-object/from16 v20, v0

    #getter for: Lcom/android/settings/wifi/WifiStatusReceiver;->DIALOG_TYPE_REDIRECT:I
    invoke-static/range {v20 .. v20}, Lcom/android/settings/wifi/WifiStatusReceiver;->access$1100(Lcom/android/settings/wifi/WifiStatusReceiver;)I

    move-result v20

    #setter for: Lcom/android/settings/wifi/WifiStatusReceiver;->mShowDialogType:I
    invoke-static/range {v19 .. v20}, Lcom/android/settings/wifi/WifiStatusReceiver;->access$1002(Lcom/android/settings/wifi/WifiStatusReceiver;I)I

    .line 574
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiStatusReceiver$DataConnection;->this$0:Lcom/android/settings/wifi/WifiStatusReceiver;

    move-object/from16 v19, v0

    #getter for: Lcom/android/settings/wifi/WifiStatusReceiver;->DEBUG:Z
    invoke-static/range {v19 .. v19}, Lcom/android/settings/wifi/WifiStatusReceiver;->access$300(Lcom/android/settings/wifi/WifiStatusReceiver;)Z

    move-result v19

    if-eqz v19, :cond_6

    const-string v19, "WifiStatusReceiver"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "mTempRedirectURL="

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiStatusReceiver$DataConnection;->this$0:Lcom/android/settings/wifi/WifiStatusReceiver;

    move-object/from16 v21, v0

    #getter for: Lcom/android/settings/wifi/WifiStatusReceiver;->mTempRedirectURL:Ljava/lang/String;
    invoke-static/range {v21 .. v21}, Lcom/android/settings/wifi/WifiStatusReceiver;->access$900(Lcom/android/settings/wifi/WifiStatusReceiver;)Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, ", mEnterSetting="

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-static {}, Lcom/android/settings/wifi/WifiStatusReceiver;->access$1200()Z

    move-result v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, ", mUITriger="

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-static {}, Lcom/android/settings/wifi/WifiStatusReceiver;->access$1300()Z

    move-result v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 631
    .end local v6           #header:Lorg/apache/http/Header;
    .end local v8           #host:Ljava/lang/String;
    .end local v11           #redirectTo:Ljava/lang/String;
    :cond_6
    :goto_1
    invoke-virtual {v3}, Landroid/net/http/AndroidHttpClient;->close()V

    .line 634
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiStatusReceiver$DataConnection;->this$0:Lcom/android/settings/wifi/WifiStatusReceiver;

    move-object/from16 v19, v0

    #getter for: Lcom/android/settings/wifi/WifiStatusReceiver;->mLoginURL:Ljava/lang/String;
    invoke-static/range {v19 .. v19}, Lcom/android/settings/wifi/WifiStatusReceiver;->access$1600(Lcom/android/settings/wifi/WifiStatusReceiver;)Ljava/lang/String;

    move-result-object v19

    if-eqz v19, :cond_1e

    .line 635
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiStatusReceiver$DataConnection;->this$0:Lcom/android/settings/wifi/WifiStatusReceiver;

    move-object/from16 v19, v0

    #getter for: Lcom/android/settings/wifi/WifiStatusReceiver;->mLoginURL:Ljava/lang/String;
    invoke-static/range {v19 .. v19}, Lcom/android/settings/wifi/WifiStatusReceiver;->access$1600(Lcom/android/settings/wifi/WifiStatusReceiver;)Ljava/lang/String;

    move-result-object v19

    if-eqz v19, :cond_7

    .line 636
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiStatusReceiver$DataConnection;->this$0:Lcom/android/settings/wifi/WifiStatusReceiver;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiStatusReceiver$DataConnection;->this$0:Lcom/android/settings/wifi/WifiStatusReceiver;

    move-object/from16 v20, v0

    #getter for: Lcom/android/settings/wifi/WifiStatusReceiver;->DIALOG_TYPE_REDIRECT:I
    invoke-static/range {v20 .. v20}, Lcom/android/settings/wifi/WifiStatusReceiver;->access$1100(Lcom/android/settings/wifi/WifiStatusReceiver;)I

    move-result v20

    #setter for: Lcom/android/settings/wifi/WifiStatusReceiver;->mShowDialogType:I
    invoke-static/range {v19 .. v20}, Lcom/android/settings/wifi/WifiStatusReceiver;->access$1002(Lcom/android/settings/wifi/WifiStatusReceiver;I)I

    .line 639
    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiStatusReceiver$DataConnection;->this$0:Lcom/android/settings/wifi/WifiStatusReceiver;

    move-object/from16 v19, v0

    #getter for: Lcom/android/settings/wifi/WifiStatusReceiver;->mWISPrInfo:Ljava/util/List;
    invoke-static/range {v19 .. v19}, Lcom/android/settings/wifi/WifiStatusReceiver;->access$1800(Lcom/android/settings/wifi/WifiStatusReceiver;)Ljava/util/List;

    move-result-object v19

    if-eqz v19, :cond_8

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiStatusReceiver$DataConnection;->this$0:Lcom/android/settings/wifi/WifiStatusReceiver;

    move-object/from16 v19, v0

    #getter for: Lcom/android/settings/wifi/WifiStatusReceiver;->mAutoWISPr:Z
    invoke-static/range {v19 .. v19}, Lcom/android/settings/wifi/WifiStatusReceiver;->access$600(Lcom/android/settings/wifi/WifiStatusReceiver;)Z

    move-result v19

    if-eqz v19, :cond_8

    .line 640
    const/4 v9, 0x0

    .restart local v9       #i:I
    :goto_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiStatusReceiver$DataConnection;->this$0:Lcom/android/settings/wifi/WifiStatusReceiver;

    move-object/from16 v19, v0

    #getter for: Lcom/android/settings/wifi/WifiStatusReceiver;->mWISPrInfo:Ljava/util/List;
    invoke-static/range {v19 .. v19}, Lcom/android/settings/wifi/WifiStatusReceiver;->access$1800(Lcom/android/settings/wifi/WifiStatusReceiver;)Ljava/util/List;

    move-result-object v19

    invoke-interface/range {v19 .. v19}, Ljava/util/List;->size()I

    move-result v19

    move/from16 v0, v19

    if-ge v9, v0, :cond_8

    .line 641
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiStatusReceiver$DataConnection;->this$0:Lcom/android/settings/wifi/WifiStatusReceiver;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiStatusReceiver$DataConnection;->this$0:Lcom/android/settings/wifi/WifiStatusReceiver;

    move-object/from16 v19, v0

    #getter for: Lcom/android/settings/wifi/WifiStatusReceiver;->mLoginURL:Ljava/lang/String;
    invoke-static/range {v19 .. v19}, Lcom/android/settings/wifi/WifiStatusReceiver;->access$1600(Lcom/android/settings/wifi/WifiStatusReceiver;)Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiStatusReceiver$DataConnection;->this$0:Lcom/android/settings/wifi/WifiStatusReceiver;

    move-object/from16 v19, v0

    #getter for: Lcom/android/settings/wifi/WifiStatusReceiver;->mWISPrInfo:Ljava/util/List;
    invoke-static/range {v19 .. v19}, Lcom/android/settings/wifi/WifiStatusReceiver;->access$1800(Lcom/android/settings/wifi/WifiStatusReceiver;)Ljava/util/List;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-interface {v0, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Lcom/android/settings/wifi/WISPrInfo;

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    move-object/from16 v2, v19

    #calls: Lcom/android/settings/wifi/WifiStatusReceiver;->postAuthentication(Ljava/lang/String;Lcom/android/settings/wifi/WISPrInfo;)Z
    invoke-static {v0, v1, v2}, Lcom/android/settings/wifi/WifiStatusReceiver;->access$1900(Lcom/android/settings/wifi/WifiStatusReceiver;Ljava/lang/String;Lcom/android/settings/wifi/WISPrInfo;)Z

    move-result v19

    if-eqz v19, :cond_1f

    .line 642
    const/16 v19, 0x1

    move/from16 v0, v19

    new-array v0, v0, [Ljava/lang/Integer;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    const/16 v21, 0x1

    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v21

    aput-object v21, v19, v20

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/settings/wifi/WifiStatusReceiver$DataConnection;->publishProgress([Ljava/lang/Object;)V

    .line 643
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiStatusReceiver$DataConnection;->this$0:Lcom/android/settings/wifi/WifiStatusReceiver;

    move-object/from16 v19, v0

    const/16 v20, -0x1

    #setter for: Lcom/android/settings/wifi/WifiStatusReceiver;->mShowDialogType:I
    invoke-static/range {v19 .. v20}, Lcom/android/settings/wifi/WifiStatusReceiver;->access$1002(Lcom/android/settings/wifi/WifiStatusReceiver;I)I

    .line 649
    .end local v9           #i:I
    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiStatusReceiver$DataConnection;->this$0:Lcom/android/settings/wifi/WifiStatusReceiver;

    move-object/from16 v19, v0

    #getter for: Lcom/android/settings/wifi/WifiStatusReceiver;->mShowDialogType:I
    invoke-static/range {v19 .. v19}, Lcom/android/settings/wifi/WifiStatusReceiver;->access$1000(Lcom/android/settings/wifi/WifiStatusReceiver;)I

    move-result v19

    const/16 v20, -0x1

    move/from16 v0, v19

    move/from16 v1, v20

    if-eq v0, v1, :cond_9

    .line 652
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiStatusReceiver$DataConnection;->this$0:Lcom/android/settings/wifi/WifiStatusReceiver;

    move-object/from16 v19, v0

    .end local v13           #response:Lorg/apache/http/HttpResponse;
    .end local v15           #statusCode:I
    :goto_3
    const/16 v20, 0x0

    #calls: Lcom/android/settings/wifi/WifiStatusReceiver;->showNotification(Ljava/lang/String;)V
    invoke-static/range {v19 .. v20}, Lcom/android/settings/wifi/WifiStatusReceiver;->access$1700(Lcom/android/settings/wifi/WifiStatusReceiver;Ljava/lang/String;)V

    .line 659
    :cond_9
    :goto_4
    const/16 v19, 0x0

    return-object v19

    .line 590
    .restart local v13       #response:Lorg/apache/http/HttpResponse;
    .restart local v15       #statusCode:I
    :cond_a
    const/16 v19, 0xc8

    move/from16 v0, v19

    if-ne v15, v0, :cond_12

    .line 592
    :try_start_1
    invoke-interface {v13}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v5

    .line 593
    .local v5, entity:Lorg/apache/http/HttpEntity;
    invoke-static {v5}, Lorg/apache/http/util/EntityUtils;->toString(Lorg/apache/http/HttpEntity;)Ljava/lang/String;

    move-result-object v14

    .line 594
    .local v14, result:Ljava/lang/String;
    invoke-static {v14}, Lcom/android/settings/wifi/WISPrManager;->detectWISPr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    .line 596
    .local v18, wisprStr:Ljava/lang/String;
    if-eqz v18, :cond_f

    .line 597
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiStatusReceiver$DataConnection;->this$0:Lcom/android/settings/wifi/WifiStatusReceiver;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v18

    #setter for: Lcom/android/settings/wifi/WifiStatusReceiver;->mWISPrURL:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/android/settings/wifi/WifiStatusReceiver;->access$1402(Lcom/android/settings/wifi/WifiStatusReceiver;Ljava/lang/String;)Ljava/lang/String;

    .line 598
    const/16 v17, 0x0

    .line 599
    .local v17, validate:Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiStatusReceiver$DataConnection;->this$0:Lcom/android/settings/wifi/WifiStatusReceiver;

    move-object/from16 v19, v0

    #getter for: Lcom/android/settings/wifi/WifiStatusReceiver;->mWISPrManager:Lcom/android/settings/wifi/WISPrManager;
    invoke-static/range {v19 .. v19}, Lcom/android/settings/wifi/WifiStatusReceiver;->access$1500(Lcom/android/settings/wifi/WifiStatusReceiver;)Lcom/android/settings/wifi/WISPrManager;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/android/settings/wifi/WISPrManager;->parseWISPr(Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v10

    .line 600
    .local v10, map:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiStatusReceiver$DataConnection;->this$0:Lcom/android/settings/wifi/WifiStatusReceiver;

    move-object/from16 v19, v0

    #getter for: Lcom/android/settings/wifi/WifiStatusReceiver;->mWISPrManager:Lcom/android/settings/wifi/WISPrManager;
    invoke-static/range {v19 .. v19}, Lcom/android/settings/wifi/WifiStatusReceiver;->access$1500(Lcom/android/settings/wifi/WifiStatusReceiver;)Lcom/android/settings/wifi/WISPrManager;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v10}, Lcom/android/settings/wifi/WISPrManager;->validateWISPr(Ljava/util/HashMap;)Z

    move-result v17

    .line 601
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiStatusReceiver$DataConnection;->this$0:Lcom/android/settings/wifi/WifiStatusReceiver;

    move-object/from16 v19, v0

    #getter for: Lcom/android/settings/wifi/WifiStatusReceiver;->DEBUG:Z
    invoke-static/range {v19 .. v19}, Lcom/android/settings/wifi/WifiStatusReceiver;->access$300(Lcom/android/settings/wifi/WifiStatusReceiver;)Z

    move-result v19

    if-eqz v19, :cond_b

    const-string v19, "WifiStatusReceiver"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "LoginURL: "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiStatusReceiver$DataConnection;->this$0:Lcom/android/settings/wifi/WifiStatusReceiver;

    move-object/from16 v21, v0

    #getter for: Lcom/android/settings/wifi/WifiStatusReceiver;->mLoginURL:Ljava/lang/String;
    invoke-static/range {v21 .. v21}, Lcom/android/settings/wifi/WifiStatusReceiver;->access$1600(Lcom/android/settings/wifi/WifiStatusReceiver;)Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 602
    :cond_b
    if-eqz v17, :cond_c

    .line 603
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiStatusReceiver$DataConnection;->this$0:Lcom/android/settings/wifi/WifiStatusReceiver;

    move-object/from16 v20, v0

    const-string v19, "LoginURL"

    move-object/from16 v0, v19

    invoke-virtual {v10, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Ljava/lang/String;

    move-object/from16 v0, v20

    move-object/from16 v1, v19

    #setter for: Lcom/android/settings/wifi/WifiStatusReceiver;->mLoginURL:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/android/settings/wifi/WifiStatusReceiver;->access$1602(Lcom/android/settings/wifi/WifiStatusReceiver;Ljava/lang/String;)Ljava/lang/String;

    .line 605
    :cond_c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiStatusReceiver$DataConnection;->this$0:Lcom/android/settings/wifi/WifiStatusReceiver;

    move-object/from16 v19, v0

    #getter for: Lcom/android/settings/wifi/WifiStatusReceiver;->DEBUG:Z
    invoke-static/range {v19 .. v19}, Lcom/android/settings/wifi/WifiStatusReceiver;->access$300(Lcom/android/settings/wifi/WifiStatusReceiver;)Z

    move-result v19

    if-eqz v19, :cond_6

    const-string v19, "WifiStatusReceiver"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "validate: "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, ", LoginURL: "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiStatusReceiver$DataConnection;->this$0:Lcom/android/settings/wifi/WifiStatusReceiver;

    move-object/from16 v21, v0

    #getter for: Lcom/android/settings/wifi/WifiStatusReceiver;->mLoginURL:Ljava/lang/String;
    invoke-static/range {v21 .. v21}, Lcom/android/settings/wifi/WifiStatusReceiver;->access$1600(Lcom/android/settings/wifi/WifiStatusReceiver;)Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/net/UnknownHostException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_1

    .line 624
    .end local v5           #entity:Lorg/apache/http/HttpEntity;
    .end local v10           #map:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v13           #response:Lorg/apache/http/HttpResponse;
    .end local v14           #result:Ljava/lang/String;
    .end local v15           #statusCode:I
    .end local v17           #validate:Z
    .end local v18           #wisprStr:Ljava/lang/String;
    :catch_0
    move-exception v4

    .line 625
    .local v4, e:Ljava/net/UnknownHostException;
    :try_start_2
    const-string v19, "WifiStatusReceiver"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "exception: "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 631
    invoke-virtual {v3}, Landroid/net/http/AndroidHttpClient;->close()V

    .line 634
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiStatusReceiver$DataConnection;->this$0:Lcom/android/settings/wifi/WifiStatusReceiver;

    move-object/from16 v19, v0

    #getter for: Lcom/android/settings/wifi/WifiStatusReceiver;->mLoginURL:Ljava/lang/String;
    invoke-static/range {v19 .. v19}, Lcom/android/settings/wifi/WifiStatusReceiver;->access$1600(Lcom/android/settings/wifi/WifiStatusReceiver;)Ljava/lang/String;

    move-result-object v19

    if-eqz v19, :cond_1a

    .line 635
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiStatusReceiver$DataConnection;->this$0:Lcom/android/settings/wifi/WifiStatusReceiver;

    move-object/from16 v19, v0

    #getter for: Lcom/android/settings/wifi/WifiStatusReceiver;->mLoginURL:Ljava/lang/String;
    invoke-static/range {v19 .. v19}, Lcom/android/settings/wifi/WifiStatusReceiver;->access$1600(Lcom/android/settings/wifi/WifiStatusReceiver;)Ljava/lang/String;

    move-result-object v19

    if-eqz v19, :cond_d

    .line 636
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiStatusReceiver$DataConnection;->this$0:Lcom/android/settings/wifi/WifiStatusReceiver;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiStatusReceiver$DataConnection;->this$0:Lcom/android/settings/wifi/WifiStatusReceiver;

    move-object/from16 v20, v0

    #getter for: Lcom/android/settings/wifi/WifiStatusReceiver;->DIALOG_TYPE_REDIRECT:I
    invoke-static/range {v20 .. v20}, Lcom/android/settings/wifi/WifiStatusReceiver;->access$1100(Lcom/android/settings/wifi/WifiStatusReceiver;)I

    move-result v20

    #setter for: Lcom/android/settings/wifi/WifiStatusReceiver;->mShowDialogType:I
    invoke-static/range {v19 .. v20}, Lcom/android/settings/wifi/WifiStatusReceiver;->access$1002(Lcom/android/settings/wifi/WifiStatusReceiver;I)I

    .line 639
    :cond_d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiStatusReceiver$DataConnection;->this$0:Lcom/android/settings/wifi/WifiStatusReceiver;

    move-object/from16 v19, v0

    #getter for: Lcom/android/settings/wifi/WifiStatusReceiver;->mWISPrInfo:Ljava/util/List;
    invoke-static/range {v19 .. v19}, Lcom/android/settings/wifi/WifiStatusReceiver;->access$1800(Lcom/android/settings/wifi/WifiStatusReceiver;)Ljava/util/List;

    move-result-object v19

    if-eqz v19, :cond_e

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiStatusReceiver$DataConnection;->this$0:Lcom/android/settings/wifi/WifiStatusReceiver;

    move-object/from16 v19, v0

    #getter for: Lcom/android/settings/wifi/WifiStatusReceiver;->mAutoWISPr:Z
    invoke-static/range {v19 .. v19}, Lcom/android/settings/wifi/WifiStatusReceiver;->access$600(Lcom/android/settings/wifi/WifiStatusReceiver;)Z

    move-result v19

    if-eqz v19, :cond_e

    .line 640
    const/4 v9, 0x0

    .restart local v9       #i:I
    :goto_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiStatusReceiver$DataConnection;->this$0:Lcom/android/settings/wifi/WifiStatusReceiver;

    move-object/from16 v19, v0

    #getter for: Lcom/android/settings/wifi/WifiStatusReceiver;->mWISPrInfo:Ljava/util/List;
    invoke-static/range {v19 .. v19}, Lcom/android/settings/wifi/WifiStatusReceiver;->access$1800(Lcom/android/settings/wifi/WifiStatusReceiver;)Ljava/util/List;

    move-result-object v19

    invoke-interface/range {v19 .. v19}, Ljava/util/List;->size()I

    move-result v19

    move/from16 v0, v19

    if-ge v9, v0, :cond_e

    .line 641
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiStatusReceiver$DataConnection;->this$0:Lcom/android/settings/wifi/WifiStatusReceiver;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiStatusReceiver$DataConnection;->this$0:Lcom/android/settings/wifi/WifiStatusReceiver;

    move-object/from16 v19, v0

    #getter for: Lcom/android/settings/wifi/WifiStatusReceiver;->mLoginURL:Ljava/lang/String;
    invoke-static/range {v19 .. v19}, Lcom/android/settings/wifi/WifiStatusReceiver;->access$1600(Lcom/android/settings/wifi/WifiStatusReceiver;)Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiStatusReceiver$DataConnection;->this$0:Lcom/android/settings/wifi/WifiStatusReceiver;

    move-object/from16 v19, v0

    #getter for: Lcom/android/settings/wifi/WifiStatusReceiver;->mWISPrInfo:Ljava/util/List;
    invoke-static/range {v19 .. v19}, Lcom/android/settings/wifi/WifiStatusReceiver;->access$1800(Lcom/android/settings/wifi/WifiStatusReceiver;)Ljava/util/List;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-interface {v0, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Lcom/android/settings/wifi/WISPrInfo;

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    move-object/from16 v2, v19

    #calls: Lcom/android/settings/wifi/WifiStatusReceiver;->postAuthentication(Ljava/lang/String;Lcom/android/settings/wifi/WISPrInfo;)Z
    invoke-static {v0, v1, v2}, Lcom/android/settings/wifi/WifiStatusReceiver;->access$1900(Lcom/android/settings/wifi/WifiStatusReceiver;Ljava/lang/String;Lcom/android/settings/wifi/WISPrInfo;)Z

    move-result v19

    if-eqz v19, :cond_1b

    .line 642
    const/16 v19, 0x1

    move/from16 v0, v19

    new-array v0, v0, [Ljava/lang/Integer;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    const/16 v21, 0x1

    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v21

    aput-object v21, v19, v20

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/settings/wifi/WifiStatusReceiver$DataConnection;->publishProgress([Ljava/lang/Object;)V

    .line 643
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiStatusReceiver$DataConnection;->this$0:Lcom/android/settings/wifi/WifiStatusReceiver;

    move-object/from16 v19, v0

    const/16 v20, -0x1

    #setter for: Lcom/android/settings/wifi/WifiStatusReceiver;->mShowDialogType:I
    invoke-static/range {v19 .. v20}, Lcom/android/settings/wifi/WifiStatusReceiver;->access$1002(Lcom/android/settings/wifi/WifiStatusReceiver;I)I

    .line 649
    .end local v9           #i:I
    :cond_e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiStatusReceiver$DataConnection;->this$0:Lcom/android/settings/wifi/WifiStatusReceiver;

    move-object/from16 v19, v0

    #getter for: Lcom/android/settings/wifi/WifiStatusReceiver;->mShowDialogType:I
    invoke-static/range {v19 .. v19}, Lcom/android/settings/wifi/WifiStatusReceiver;->access$1000(Lcom/android/settings/wifi/WifiStatusReceiver;)I

    move-result v19

    const/16 v20, -0x1

    move/from16 v0, v19

    move/from16 v1, v20

    if-eq v0, v1, :cond_9

    .line 652
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiStatusReceiver$DataConnection;->this$0:Lcom/android/settings/wifi/WifiStatusReceiver;

    move-object/from16 v19, v0

    goto/16 :goto_3

    .line 607
    .end local v4           #e:Ljava/net/UnknownHostException;
    .restart local v5       #entity:Lorg/apache/http/HttpEntity;
    .restart local v13       #response:Lorg/apache/http/HttpResponse;
    .restart local v14       #result:Ljava/lang/String;
    .restart local v15       #statusCode:I
    .restart local v18       #wisprStr:Ljava/lang/String;
    :cond_f
    :try_start_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiStatusReceiver$DataConnection;->this$0:Lcom/android/settings/wifi/WifiStatusReceiver;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    #calls: Lcom/android/settings/wifi/WifiStatusReceiver;->showNotification(Ljava/lang/String;)V
    invoke-static/range {v19 .. v20}, Lcom/android/settings/wifi/WifiStatusReceiver;->access$1700(Lcom/android/settings/wifi/WifiStatusReceiver;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Ljava/net/UnknownHostException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto/16 :goto_1

    .line 627
    .end local v5           #entity:Lorg/apache/http/HttpEntity;
    .end local v13           #response:Lorg/apache/http/HttpResponse;
    .end local v14           #result:Ljava/lang/String;
    .end local v15           #statusCode:I
    .end local v18           #wisprStr:Ljava/lang/String;
    :catch_1
    move-exception v4

    .line 628
    .local v4, e:Ljava/lang/Exception;
    :try_start_4
    const-string v19, "WifiStatusReceiver"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "Exception: "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual {v4}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 629
    invoke-virtual {v12}, Lorg/apache/http/client/methods/HttpGet;->abort()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 631
    invoke-virtual {v3}, Landroid/net/http/AndroidHttpClient;->close()V

    .line 634
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiStatusReceiver$DataConnection;->this$0:Lcom/android/settings/wifi/WifiStatusReceiver;

    move-object/from16 v19, v0

    #getter for: Lcom/android/settings/wifi/WifiStatusReceiver;->mLoginURL:Ljava/lang/String;
    invoke-static/range {v19 .. v19}, Lcom/android/settings/wifi/WifiStatusReceiver;->access$1600(Lcom/android/settings/wifi/WifiStatusReceiver;)Ljava/lang/String;

    move-result-object v19

    if-eqz v19, :cond_1c

    .line 635
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiStatusReceiver$DataConnection;->this$0:Lcom/android/settings/wifi/WifiStatusReceiver;

    move-object/from16 v19, v0

    #getter for: Lcom/android/settings/wifi/WifiStatusReceiver;->mLoginURL:Ljava/lang/String;
    invoke-static/range {v19 .. v19}, Lcom/android/settings/wifi/WifiStatusReceiver;->access$1600(Lcom/android/settings/wifi/WifiStatusReceiver;)Ljava/lang/String;

    move-result-object v19

    if-eqz v19, :cond_10

    .line 636
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiStatusReceiver$DataConnection;->this$0:Lcom/android/settings/wifi/WifiStatusReceiver;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiStatusReceiver$DataConnection;->this$0:Lcom/android/settings/wifi/WifiStatusReceiver;

    move-object/from16 v20, v0

    #getter for: Lcom/android/settings/wifi/WifiStatusReceiver;->DIALOG_TYPE_REDIRECT:I
    invoke-static/range {v20 .. v20}, Lcom/android/settings/wifi/WifiStatusReceiver;->access$1100(Lcom/android/settings/wifi/WifiStatusReceiver;)I

    move-result v20

    #setter for: Lcom/android/settings/wifi/WifiStatusReceiver;->mShowDialogType:I
    invoke-static/range {v19 .. v20}, Lcom/android/settings/wifi/WifiStatusReceiver;->access$1002(Lcom/android/settings/wifi/WifiStatusReceiver;I)I

    .line 639
    :cond_10
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiStatusReceiver$DataConnection;->this$0:Lcom/android/settings/wifi/WifiStatusReceiver;

    move-object/from16 v19, v0

    #getter for: Lcom/android/settings/wifi/WifiStatusReceiver;->mWISPrInfo:Ljava/util/List;
    invoke-static/range {v19 .. v19}, Lcom/android/settings/wifi/WifiStatusReceiver;->access$1800(Lcom/android/settings/wifi/WifiStatusReceiver;)Ljava/util/List;

    move-result-object v19

    if-eqz v19, :cond_11

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiStatusReceiver$DataConnection;->this$0:Lcom/android/settings/wifi/WifiStatusReceiver;

    move-object/from16 v19, v0

    #getter for: Lcom/android/settings/wifi/WifiStatusReceiver;->mAutoWISPr:Z
    invoke-static/range {v19 .. v19}, Lcom/android/settings/wifi/WifiStatusReceiver;->access$600(Lcom/android/settings/wifi/WifiStatusReceiver;)Z

    move-result v19

    if-eqz v19, :cond_11

    .line 640
    const/4 v9, 0x0

    .restart local v9       #i:I
    :goto_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiStatusReceiver$DataConnection;->this$0:Lcom/android/settings/wifi/WifiStatusReceiver;

    move-object/from16 v19, v0

    #getter for: Lcom/android/settings/wifi/WifiStatusReceiver;->mWISPrInfo:Ljava/util/List;
    invoke-static/range {v19 .. v19}, Lcom/android/settings/wifi/WifiStatusReceiver;->access$1800(Lcom/android/settings/wifi/WifiStatusReceiver;)Ljava/util/List;

    move-result-object v19

    invoke-interface/range {v19 .. v19}, Ljava/util/List;->size()I

    move-result v19

    move/from16 v0, v19

    if-ge v9, v0, :cond_11

    .line 641
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiStatusReceiver$DataConnection;->this$0:Lcom/android/settings/wifi/WifiStatusReceiver;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiStatusReceiver$DataConnection;->this$0:Lcom/android/settings/wifi/WifiStatusReceiver;

    move-object/from16 v19, v0

    #getter for: Lcom/android/settings/wifi/WifiStatusReceiver;->mLoginURL:Ljava/lang/String;
    invoke-static/range {v19 .. v19}, Lcom/android/settings/wifi/WifiStatusReceiver;->access$1600(Lcom/android/settings/wifi/WifiStatusReceiver;)Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiStatusReceiver$DataConnection;->this$0:Lcom/android/settings/wifi/WifiStatusReceiver;

    move-object/from16 v19, v0

    #getter for: Lcom/android/settings/wifi/WifiStatusReceiver;->mWISPrInfo:Ljava/util/List;
    invoke-static/range {v19 .. v19}, Lcom/android/settings/wifi/WifiStatusReceiver;->access$1800(Lcom/android/settings/wifi/WifiStatusReceiver;)Ljava/util/List;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-interface {v0, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Lcom/android/settings/wifi/WISPrInfo;

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    move-object/from16 v2, v19

    #calls: Lcom/android/settings/wifi/WifiStatusReceiver;->postAuthentication(Ljava/lang/String;Lcom/android/settings/wifi/WISPrInfo;)Z
    invoke-static {v0, v1, v2}, Lcom/android/settings/wifi/WifiStatusReceiver;->access$1900(Lcom/android/settings/wifi/WifiStatusReceiver;Ljava/lang/String;Lcom/android/settings/wifi/WISPrInfo;)Z

    move-result v19

    if-eqz v19, :cond_1d

    .line 642
    const/16 v19, 0x1

    move/from16 v0, v19

    new-array v0, v0, [Ljava/lang/Integer;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    const/16 v21, 0x1

    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v21

    aput-object v21, v19, v20

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/settings/wifi/WifiStatusReceiver$DataConnection;->publishProgress([Ljava/lang/Object;)V

    .line 643
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiStatusReceiver$DataConnection;->this$0:Lcom/android/settings/wifi/WifiStatusReceiver;

    move-object/from16 v19, v0

    const/16 v20, -0x1

    #setter for: Lcom/android/settings/wifi/WifiStatusReceiver;->mShowDialogType:I
    invoke-static/range {v19 .. v20}, Lcom/android/settings/wifi/WifiStatusReceiver;->access$1002(Lcom/android/settings/wifi/WifiStatusReceiver;I)I

    .line 649
    .end local v9           #i:I
    :cond_11
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiStatusReceiver$DataConnection;->this$0:Lcom/android/settings/wifi/WifiStatusReceiver;

    move-object/from16 v19, v0

    #getter for: Lcom/android/settings/wifi/WifiStatusReceiver;->mShowDialogType:I
    invoke-static/range {v19 .. v19}, Lcom/android/settings/wifi/WifiStatusReceiver;->access$1000(Lcom/android/settings/wifi/WifiStatusReceiver;)I

    move-result v19

    const/16 v20, -0x1

    move/from16 v0, v19

    move/from16 v1, v20

    if-eq v0, v1, :cond_9

    .line 652
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiStatusReceiver$DataConnection;->this$0:Lcom/android/settings/wifi/WifiStatusReceiver;

    move-object/from16 v19, v0

    goto/16 :goto_3

    .line 609
    .end local v4           #e:Ljava/lang/Exception;
    .restart local v13       #response:Lorg/apache/http/HttpResponse;
    .restart local v15       #statusCode:I
    :cond_12
    const/16 v19, 0xcc

    move/from16 v0, v19

    if-ne v15, v0, :cond_17

    .line 611
    :try_start_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiStatusReceiver$DataConnection;->this$0:Lcom/android/settings/wifi/WifiStatusReceiver;

    move-object/from16 v19, v0

    #getter for: Lcom/android/settings/wifi/WifiStatusReceiver;->DEBUG:Z
    invoke-static/range {v19 .. v19}, Lcom/android/settings/wifi/WifiStatusReceiver;->access$300(Lcom/android/settings/wifi/WifiStatusReceiver;)Z

    move-result v19

    if-eqz v19, :cond_13

    const-string v19, "WifiStatusReceiver"

    const-string v20, "status code 204"

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 613
    :cond_13
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiStatusReceiver$DataConnection;->this$0:Lcom/android/settings/wifi/WifiStatusReceiver;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/android/settings/wifi/WifiStatusReceiver;->getConfifgurationById()Landroid/net/wifi/WifiConfiguration;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0
    .catch Ljava/net/UnknownHostException; {:try_start_5 .. :try_end_5} :catch_0
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1

    goto/16 :goto_1

    .line 631
    .end local v13           #response:Lorg/apache/http/HttpResponse;
    .end local v15           #statusCode:I
    :catchall_0
    move-exception v19

    move-object/from16 v20, v19

    invoke-virtual {v3}, Landroid/net/http/AndroidHttpClient;->close()V

    .line 634
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiStatusReceiver$DataConnection;->this$0:Lcom/android/settings/wifi/WifiStatusReceiver;

    move-object/from16 v19, v0

    #getter for: Lcom/android/settings/wifi/WifiStatusReceiver;->mLoginURL:Ljava/lang/String;
    invoke-static/range {v19 .. v19}, Lcom/android/settings/wifi/WifiStatusReceiver;->access$1600(Lcom/android/settings/wifi/WifiStatusReceiver;)Ljava/lang/String;

    move-result-object v19

    if-eqz v19, :cond_18

    .line 635
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiStatusReceiver$DataConnection;->this$0:Lcom/android/settings/wifi/WifiStatusReceiver;

    move-object/from16 v19, v0

    #getter for: Lcom/android/settings/wifi/WifiStatusReceiver;->mLoginURL:Ljava/lang/String;
    invoke-static/range {v19 .. v19}, Lcom/android/settings/wifi/WifiStatusReceiver;->access$1600(Lcom/android/settings/wifi/WifiStatusReceiver;)Ljava/lang/String;

    move-result-object v19

    if-eqz v19, :cond_14

    .line 636
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiStatusReceiver$DataConnection;->this$0:Lcom/android/settings/wifi/WifiStatusReceiver;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiStatusReceiver$DataConnection;->this$0:Lcom/android/settings/wifi/WifiStatusReceiver;

    move-object/from16 v21, v0

    #getter for: Lcom/android/settings/wifi/WifiStatusReceiver;->DIALOG_TYPE_REDIRECT:I
    invoke-static/range {v21 .. v21}, Lcom/android/settings/wifi/WifiStatusReceiver;->access$1100(Lcom/android/settings/wifi/WifiStatusReceiver;)I

    move-result v21

    move-object/from16 v0, v19

    move/from16 v1, v21

    #setter for: Lcom/android/settings/wifi/WifiStatusReceiver;->mShowDialogType:I
    invoke-static {v0, v1}, Lcom/android/settings/wifi/WifiStatusReceiver;->access$1002(Lcom/android/settings/wifi/WifiStatusReceiver;I)I

    .line 639
    :cond_14
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiStatusReceiver$DataConnection;->this$0:Lcom/android/settings/wifi/WifiStatusReceiver;

    move-object/from16 v19, v0

    #getter for: Lcom/android/settings/wifi/WifiStatusReceiver;->mWISPrInfo:Ljava/util/List;
    invoke-static/range {v19 .. v19}, Lcom/android/settings/wifi/WifiStatusReceiver;->access$1800(Lcom/android/settings/wifi/WifiStatusReceiver;)Ljava/util/List;

    move-result-object v19

    if-eqz v19, :cond_15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiStatusReceiver$DataConnection;->this$0:Lcom/android/settings/wifi/WifiStatusReceiver;

    move-object/from16 v19, v0

    #getter for: Lcom/android/settings/wifi/WifiStatusReceiver;->mAutoWISPr:Z
    invoke-static/range {v19 .. v19}, Lcom/android/settings/wifi/WifiStatusReceiver;->access$600(Lcom/android/settings/wifi/WifiStatusReceiver;)Z

    move-result v19

    if-eqz v19, :cond_15

    .line 640
    const/4 v9, 0x0

    .restart local v9       #i:I
    :goto_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiStatusReceiver$DataConnection;->this$0:Lcom/android/settings/wifi/WifiStatusReceiver;

    move-object/from16 v19, v0

    #getter for: Lcom/android/settings/wifi/WifiStatusReceiver;->mWISPrInfo:Ljava/util/List;
    invoke-static/range {v19 .. v19}, Lcom/android/settings/wifi/WifiStatusReceiver;->access$1800(Lcom/android/settings/wifi/WifiStatusReceiver;)Ljava/util/List;

    move-result-object v19

    invoke-interface/range {v19 .. v19}, Ljava/util/List;->size()I

    move-result v19

    move/from16 v0, v19

    if-ge v9, v0, :cond_15

    .line 641
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiStatusReceiver$DataConnection;->this$0:Lcom/android/settings/wifi/WifiStatusReceiver;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiStatusReceiver$DataConnection;->this$0:Lcom/android/settings/wifi/WifiStatusReceiver;

    move-object/from16 v19, v0

    #getter for: Lcom/android/settings/wifi/WifiStatusReceiver;->mLoginURL:Ljava/lang/String;
    invoke-static/range {v19 .. v19}, Lcom/android/settings/wifi/WifiStatusReceiver;->access$1600(Lcom/android/settings/wifi/WifiStatusReceiver;)Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiStatusReceiver$DataConnection;->this$0:Lcom/android/settings/wifi/WifiStatusReceiver;

    move-object/from16 v19, v0

    #getter for: Lcom/android/settings/wifi/WifiStatusReceiver;->mWISPrInfo:Ljava/util/List;
    invoke-static/range {v19 .. v19}, Lcom/android/settings/wifi/WifiStatusReceiver;->access$1800(Lcom/android/settings/wifi/WifiStatusReceiver;)Ljava/util/List;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-interface {v0, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Lcom/android/settings/wifi/WISPrInfo;

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    move-object/from16 v2, v19

    #calls: Lcom/android/settings/wifi/WifiStatusReceiver;->postAuthentication(Ljava/lang/String;Lcom/android/settings/wifi/WISPrInfo;)Z
    invoke-static {v0, v1, v2}, Lcom/android/settings/wifi/WifiStatusReceiver;->access$1900(Lcom/android/settings/wifi/WifiStatusReceiver;Ljava/lang/String;Lcom/android/settings/wifi/WISPrInfo;)Z

    move-result v19

    if-eqz v19, :cond_19

    .line 642
    const/16 v19, 0x1

    move/from16 v0, v19

    new-array v0, v0, [Ljava/lang/Integer;

    move-object/from16 v19, v0

    const/16 v21, 0x0

    const/16 v22, 0x1

    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v22

    aput-object v22, v19, v21

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/settings/wifi/WifiStatusReceiver$DataConnection;->publishProgress([Ljava/lang/Object;)V

    .line 643
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiStatusReceiver$DataConnection;->this$0:Lcom/android/settings/wifi/WifiStatusReceiver;

    move-object/from16 v19, v0

    const/16 v21, -0x1

    move-object/from16 v0, v19

    move/from16 v1, v21

    #setter for: Lcom/android/settings/wifi/WifiStatusReceiver;->mShowDialogType:I
    invoke-static {v0, v1}, Lcom/android/settings/wifi/WifiStatusReceiver;->access$1002(Lcom/android/settings/wifi/WifiStatusReceiver;I)I

    .line 649
    .end local v9           #i:I
    :cond_15
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiStatusReceiver$DataConnection;->this$0:Lcom/android/settings/wifi/WifiStatusReceiver;

    move-object/from16 v19, v0

    #getter for: Lcom/android/settings/wifi/WifiStatusReceiver;->mShowDialogType:I
    invoke-static/range {v19 .. v19}, Lcom/android/settings/wifi/WifiStatusReceiver;->access$1000(Lcom/android/settings/wifi/WifiStatusReceiver;)I

    move-result v19

    const/16 v21, -0x1

    move/from16 v0, v19

    move/from16 v1, v21

    if-eq v0, v1, :cond_16

    .line 652
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiStatusReceiver$DataConnection;->this$0:Lcom/android/settings/wifi/WifiStatusReceiver;

    move-object/from16 v19, v0

    const/16 v21, 0x0

    move-object/from16 v0, v19

    move-object/from16 v1, v21

    #calls: Lcom/android/settings/wifi/WifiStatusReceiver;->showNotification(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/android/settings/wifi/WifiStatusReceiver;->access$1700(Lcom/android/settings/wifi/WifiStatusReceiver;Ljava/lang/String;)V

    .line 631
    :cond_16
    :goto_8
    throw v20

    .line 622
    .restart local v13       #response:Lorg/apache/http/HttpResponse;
    .restart local v15       #statusCode:I
    :cond_17
    :try_start_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiStatusReceiver$DataConnection;->this$0:Lcom/android/settings/wifi/WifiStatusReceiver;

    move-object/from16 v19, v0

    #getter for: Lcom/android/settings/wifi/WifiStatusReceiver;->DEBUG:Z
    invoke-static/range {v19 .. v19}, Lcom/android/settings/wifi/WifiStatusReceiver;->access$300(Lcom/android/settings/wifi/WifiStatusReceiver;)Z

    move-result v19

    if-eqz v19, :cond_6

    const-string v19, "WifiStatusReceiver"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "status code="

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0
    .catch Ljava/net/UnknownHostException; {:try_start_6 .. :try_end_6} :catch_0
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1

    goto/16 :goto_1

    .line 654
    .end local v13           #response:Lorg/apache/http/HttpResponse;
    .end local v15           #statusCode:I
    :cond_18
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiStatusReceiver$DataConnection;->this$0:Lcom/android/settings/wifi/WifiStatusReceiver;

    move-object/from16 v19, v0

    #getter for: Lcom/android/settings/wifi/WifiStatusReceiver;->mTempRedirectURL:Ljava/lang/String;
    invoke-static/range {v19 .. v19}, Lcom/android/settings/wifi/WifiStatusReceiver;->access$900(Lcom/android/settings/wifi/WifiStatusReceiver;)Ljava/lang/String;

    move-result-object v19

    if-eqz v19, :cond_16

    .line 655
    new-instance v19, Lcom/android/settings/wifi/WifiStatusReceiver$WISPrDataConnection;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiStatusReceiver$DataConnection;->this$0:Lcom/android/settings/wifi/WifiStatusReceiver;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    move-object/from16 v0, v19

    move-object/from16 v1, v21

    move-object/from16 v2, v22

    invoke-direct {v0, v1, v2}, Lcom/android/settings/wifi/WifiStatusReceiver$WISPrDataConnection;-><init>(Lcom/android/settings/wifi/WifiStatusReceiver;Lcom/android/settings/wifi/WifiStatusReceiver$1;)V

    const/16 v21, 0x0

    move/from16 v0, v21

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v21, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/android/settings/wifi/WifiStatusReceiver$WISPrDataConnection;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_8

    .line 640
    .restart local v9       #i:I
    :cond_19
    add-int/lit8 v9, v9, 0x1

    goto/16 :goto_7

    .line 654
    .end local v9           #i:I
    .local v4, e:Ljava/net/UnknownHostException;
    :cond_1a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiStatusReceiver$DataConnection;->this$0:Lcom/android/settings/wifi/WifiStatusReceiver;

    move-object/from16 v19, v0

    #getter for: Lcom/android/settings/wifi/WifiStatusReceiver;->mTempRedirectURL:Ljava/lang/String;
    invoke-static/range {v19 .. v19}, Lcom/android/settings/wifi/WifiStatusReceiver;->access$900(Lcom/android/settings/wifi/WifiStatusReceiver;)Ljava/lang/String;

    move-result-object v19

    if-eqz v19, :cond_9

    .line 655
    new-instance v19, Lcom/android/settings/wifi/WifiStatusReceiver$WISPrDataConnection;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiStatusReceiver$DataConnection;->this$0:Lcom/android/settings/wifi/WifiStatusReceiver;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    invoke-direct/range {v19 .. v21}, Lcom/android/settings/wifi/WifiStatusReceiver$WISPrDataConnection;-><init>(Lcom/android/settings/wifi/WifiStatusReceiver;Lcom/android/settings/wifi/WifiStatusReceiver$1;)V

    const/16 v20, 0x0

    move/from16 v0, v20

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v20, v0

    .end local v4           #e:Ljava/net/UnknownHostException;
    :goto_9
    invoke-virtual/range {v19 .. v20}, Lcom/android/settings/wifi/WifiStatusReceiver$WISPrDataConnection;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto/16 :goto_4

    .line 640
    .restart local v4       #e:Ljava/net/UnknownHostException;
    .restart local v9       #i:I
    :cond_1b
    add-int/lit8 v9, v9, 0x1

    goto/16 :goto_5

    .line 654
    .end local v9           #i:I
    .local v4, e:Ljava/lang/Exception;
    :cond_1c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiStatusReceiver$DataConnection;->this$0:Lcom/android/settings/wifi/WifiStatusReceiver;

    move-object/from16 v19, v0

    #getter for: Lcom/android/settings/wifi/WifiStatusReceiver;->mTempRedirectURL:Ljava/lang/String;
    invoke-static/range {v19 .. v19}, Lcom/android/settings/wifi/WifiStatusReceiver;->access$900(Lcom/android/settings/wifi/WifiStatusReceiver;)Ljava/lang/String;

    move-result-object v19

    if-eqz v19, :cond_9

    .line 655
    new-instance v19, Lcom/android/settings/wifi/WifiStatusReceiver$WISPrDataConnection;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiStatusReceiver$DataConnection;->this$0:Lcom/android/settings/wifi/WifiStatusReceiver;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    invoke-direct/range {v19 .. v21}, Lcom/android/settings/wifi/WifiStatusReceiver$WISPrDataConnection;-><init>(Lcom/android/settings/wifi/WifiStatusReceiver;Lcom/android/settings/wifi/WifiStatusReceiver$1;)V

    const/16 v20, 0x0

    move/from16 v0, v20

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v20, v0

    goto :goto_9

    .line 640
    .restart local v9       #i:I
    :cond_1d
    add-int/lit8 v9, v9, 0x1

    goto/16 :goto_6

    .line 654
    .end local v4           #e:Ljava/lang/Exception;
    .end local v9           #i:I
    .restart local v13       #response:Lorg/apache/http/HttpResponse;
    .restart local v15       #statusCode:I
    :cond_1e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiStatusReceiver$DataConnection;->this$0:Lcom/android/settings/wifi/WifiStatusReceiver;

    move-object/from16 v19, v0

    #getter for: Lcom/android/settings/wifi/WifiStatusReceiver;->mTempRedirectURL:Ljava/lang/String;
    invoke-static/range {v19 .. v19}, Lcom/android/settings/wifi/WifiStatusReceiver;->access$900(Lcom/android/settings/wifi/WifiStatusReceiver;)Ljava/lang/String;

    move-result-object v19

    if-eqz v19, :cond_9

    .line 655
    new-instance v19, Lcom/android/settings/wifi/WifiStatusReceiver$WISPrDataConnection;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiStatusReceiver$DataConnection;->this$0:Lcom/android/settings/wifi/WifiStatusReceiver;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    invoke-direct/range {v19 .. v21}, Lcom/android/settings/wifi/WifiStatusReceiver$WISPrDataConnection;-><init>(Lcom/android/settings/wifi/WifiStatusReceiver;Lcom/android/settings/wifi/WifiStatusReceiver$1;)V

    const/16 v20, 0x0

    move/from16 v0, v20

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v20, v0

    goto :goto_9

    .line 640
    .restart local v9       #i:I
    :cond_1f
    add-int/lit8 v9, v9, 0x1

    goto/16 :goto_2
.end method

.method protected varargs onProgressUpdate([Ljava/lang/Integer;)V
    .locals 5
    .parameter "values"

    .prologue
    const/4 v4, 0x0

    .line 663
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onProgressUpdate([Ljava/lang/Object;)V

    .line 665
    iget-object v1, p0, Lcom/android/settings/wifi/WifiStatusReceiver$DataConnection;->this$0:Lcom/android/settings/wifi/WifiStatusReceiver;

    #getter for: Lcom/android/settings/wifi/WifiStatusReceiver;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/settings/wifi/WifiStatusReceiver;->access$700(Lcom/android/settings/wifi/WifiStatusReceiver;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0c07e6

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/android/settings/wifi/WifiStatusReceiver$DataConnection;->this$0:Lcom/android/settings/wifi/WifiStatusReceiver;

    #getter for: Lcom/android/settings/wifi/WifiStatusReceiver;->mSSID:Ljava/lang/String;
    invoke-static {v3}, Lcom/android/settings/wifi/WifiStatusReceiver;->access$2100(Lcom/android/settings/wifi/WifiStatusReceiver;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 666
    .local v0, msg:Ljava/lang/String;
    iget-object v1, p0, Lcom/android/settings/wifi/WifiStatusReceiver$DataConnection;->this$0:Lcom/android/settings/wifi/WifiStatusReceiver;

    #getter for: Lcom/android/settings/wifi/WifiStatusReceiver;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/settings/wifi/WifiStatusReceiver;->access$700(Lcom/android/settings/wifi/WifiStatusReceiver;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v0, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 669
    return-void
.end method

.method protected bridge synthetic onProgressUpdate([Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 536
    check-cast p1, [Ljava/lang/Integer;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/settings/wifi/WifiStatusReceiver$DataConnection;->onProgressUpdate([Ljava/lang/Integer;)V

    return-void
.end method
