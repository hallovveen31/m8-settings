.class Lcom/android/settings/wifi/WifiStatusReceiver$VzwWISPrDataConnection;
.super Landroid/os/AsyncTask;
.source "WifiStatusReceiver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/wifi/WifiStatusReceiver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "VzwWISPrDataConnection"
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
    .line 716
    iput-object p1, p0, Lcom/android/settings/wifi/WifiStatusReceiver$VzwWISPrDataConnection;->this$0:Lcom/android/settings/wifi/WifiStatusReceiver;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/settings/wifi/WifiStatusReceiver;Lcom/android/settings/wifi/WifiStatusReceiver$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 716
    invoke-direct {p0, p1}, Lcom/android/settings/wifi/WifiStatusReceiver$VzwWISPrDataConnection;-><init>(Lcom/android/settings/wifi/WifiStatusReceiver;)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 716
    check-cast p1, [Ljava/lang/String;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/settings/wifi/WifiStatusReceiver$VzwWISPrDataConnection;->doInBackground([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/String;)Ljava/lang/String;
    .locals 20
    .parameter "urls"

    .prologue
    .line 718
    const-string v17, "Android-Wifi/0.1"

    invoke-static/range {v17 .. v17}, Landroid/net/http/AndroidHttpClient;->newInstance(Ljava/lang/String;)Landroid/net/http/AndroidHttpClient;

    move-result-object v3

    .line 721
    .local v3, client:Landroid/net/http/AndroidHttpClient;
    :try_start_0
    new-instance v10, Lorg/apache/http/client/methods/HttpGet;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiStatusReceiver$VzwWISPrDataConnection;->this$0:Lcom/android/settings/wifi/WifiStatusReceiver;

    move-object/from16 v17, v0

    #getter for: Lcom/android/settings/wifi/WifiStatusReceiver;->mVzwRedirectURL:Ljava/lang/String;
    invoke-static/range {v17 .. v17}, Lcom/android/settings/wifi/WifiStatusReceiver;->access$400(Lcom/android/settings/wifi/WifiStatusReceiver;)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-direct {v10, v0}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 728
    .local v10, request:Lorg/apache/http/client/methods/HttpGet;
    :goto_0
    if-nez v10, :cond_0

    const/16 v17, 0x0

    .line 798
    :goto_1
    return-object v17

    .line 722
    .end local v10           #request:Lorg/apache/http/client/methods/HttpGet;
    :catch_0
    move-exception v4

    .line 723
    .local v4, e:Ljava/lang/IllegalArgumentException;
    const-string v17, "WifiStatusReceiver"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "invalid vzw url="

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiStatusReceiver$VzwWISPrDataConnection;->this$0:Lcom/android/settings/wifi/WifiStatusReceiver;

    move-object/from16 v19, v0

    #getter for: Lcom/android/settings/wifi/WifiStatusReceiver;->mVzwRedirectURL:Ljava/lang/String;
    invoke-static/range {v19 .. v19}, Lcom/android/settings/wifi/WifiStatusReceiver;->access$400(Lcom/android/settings/wifi/WifiStatusReceiver;)Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 724
    invoke-virtual {v4}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    .line 725
    const/4 v10, 0x0

    .restart local v10       #request:Lorg/apache/http/client/methods/HttpGet;
    goto :goto_0

    .line 730
    .end local v4           #e:Ljava/lang/IllegalArgumentException;
    :cond_0
    const/4 v15, 0x0

    .line 732
    .local v15, validate:Z
    :try_start_1
    invoke-virtual {v3, v10}, Landroid/net/http/AndroidHttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v11

    .line 733
    .local v11, response:Lorg/apache/http/HttpResponse;
    invoke-interface {v11}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v17

    invoke-interface/range {v17 .. v17}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v13

    .line 736
    .local v13, statusCode:I
    const-string v17, "WifiStatusReceiver"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "statusCode: "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 737
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiStatusReceiver$VzwWISPrDataConnection;->this$0:Lcom/android/settings/wifi/WifiStatusReceiver;

    move-object/from16 v17, v0

    #getter for: Lcom/android/settings/wifi/WifiStatusReceiver;->DEBUG:Z
    invoke-static/range {v17 .. v17}, Lcom/android/settings/wifi/WifiStatusReceiver;->access$300(Lcom/android/settings/wifi/WifiStatusReceiver;)Z

    move-result v17

    if-eqz v17, :cond_1

    .line 738
    invoke-interface {v11}, Lorg/apache/http/HttpResponse;->getAllHeaders()[Lorg/apache/http/Header;

    move-result-object v6

    .line 739
    .local v6, headers:[Lorg/apache/http/Header;
    const/4 v8, 0x0

    .local v8, i:I
    :goto_2
    array-length v0, v6

    move/from16 v17, v0

    move/from16 v0, v17

    if-ge v8, v0, :cond_1

    .line 740
    const-string v17, "WifiStatusReceiver"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "header_"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, " name:"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    aget-object v19, v6, v8

    invoke-interface/range {v19 .. v19}, Lorg/apache/http/Header;->getName()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 741
    const-string v17, "WifiStatusReceiver"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "header_"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, " value:"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    aget-object v19, v6, v8

    invoke-interface/range {v19 .. v19}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 739
    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    .line 747
    .end local v6           #headers:[Lorg/apache/http/Header;
    .end local v8           #i:I
    :cond_1
    invoke-interface {v11}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v5

    .line 748
    .local v5, entity:Lorg/apache/http/HttpEntity;
    invoke-static {v5}, Lorg/apache/http/util/EntityUtils;->toString(Lorg/apache/http/HttpEntity;)Ljava/lang/String;

    move-result-object v12

    .line 751
    .local v12, result:Ljava/lang/String;
    invoke-static {v12}, Lcom/android/settings/wifi/WISPrManager;->detectWISPr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    .line 754
    .local v16, wisprStr:Ljava/lang/String;
    if-eqz v16, :cond_3

    .line 756
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiStatusReceiver$VzwWISPrDataConnection;->this$0:Lcom/android/settings/wifi/WifiStatusReceiver;

    move-object/from16 v17, v0

    #getter for: Lcom/android/settings/wifi/WifiStatusReceiver;->mWISPrManager:Lcom/android/settings/wifi/WISPrManager;
    invoke-static/range {v17 .. v17}, Lcom/android/settings/wifi/WifiStatusReceiver;->access$1500(Lcom/android/settings/wifi/WifiStatusReceiver;)Lcom/android/settings/wifi/WISPrManager;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/android/settings/wifi/WISPrManager;->parseWISPr(Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v9

    .line 757
    .local v9, map:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiStatusReceiver$VzwWISPrDataConnection;->this$0:Lcom/android/settings/wifi/WifiStatusReceiver;

    move-object/from16 v17, v0

    #getter for: Lcom/android/settings/wifi/WifiStatusReceiver;->mWISPrManager:Lcom/android/settings/wifi/WISPrManager;
    invoke-static/range {v17 .. v17}, Lcom/android/settings/wifi/WifiStatusReceiver;->access$1500(Lcom/android/settings/wifi/WifiStatusReceiver;)Lcom/android/settings/wifi/WISPrManager;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v9}, Lcom/android/settings/wifi/WISPrManager;->validateWISPr(Ljava/util/HashMap;)Z

    move-result v15

    .line 758
    if-eqz v15, :cond_2

    .line 759
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiStatusReceiver$VzwWISPrDataConnection;->this$0:Lcom/android/settings/wifi/WifiStatusReceiver;

    move-object/from16 v18, v0

    const-string v17, "LoginURL"

    move-object/from16 v0, v17

    invoke-virtual {v9, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Ljava/lang/String;

    move-object/from16 v0, v18

    move-object/from16 v1, v17

    #setter for: Lcom/android/settings/wifi/WifiStatusReceiver;->mLoginURL:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/android/settings/wifi/WifiStatusReceiver;->access$1602(Lcom/android/settings/wifi/WifiStatusReceiver;Ljava/lang/String;)Ljava/lang/String;

    .line 760
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiStatusReceiver$VzwWISPrDataConnection;->this$0:Lcom/android/settings/wifi/WifiStatusReceiver;

    move-object/from16 v17, v0

    #getter for: Lcom/android/settings/wifi/WifiStatusReceiver;->DEBUG:Z
    invoke-static/range {v17 .. v17}, Lcom/android/settings/wifi/WifiStatusReceiver;->access$300(Lcom/android/settings/wifi/WifiStatusReceiver;)Z

    move-result v17

    if-eqz v17, :cond_2

    const-string v17, "WifiStatusReceiver"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "LoginURL: "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiStatusReceiver$VzwWISPrDataConnection;->this$0:Lcom/android/settings/wifi/WifiStatusReceiver;

    move-object/from16 v19, v0

    #getter for: Lcom/android/settings/wifi/WifiStatusReceiver;->mLoginURL:Ljava/lang/String;
    invoke-static/range {v19 .. v19}, Lcom/android/settings/wifi/WifiStatusReceiver;->access$1600(Lcom/android/settings/wifi/WifiStatusReceiver;)Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 775
    .end local v5           #entity:Lorg/apache/http/HttpEntity;
    .end local v9           #map:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v11           #response:Lorg/apache/http/HttpResponse;
    .end local v12           #result:Ljava/lang/String;
    .end local v13           #statusCode:I
    .end local v16           #wisprStr:Ljava/lang/String;
    :cond_2
    :goto_3
    invoke-virtual {v3}, Landroid/net/http/AndroidHttpClient;->close()V

    .line 779
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiStatusReceiver$VzwWISPrDataConnection;->this$0:Lcom/android/settings/wifi/WifiStatusReceiver;

    move-object/from16 v17, v0

    #getter for: Lcom/android/settings/wifi/WifiStatusReceiver;->mLoginURL:Ljava/lang/String;
    invoke-static/range {v17 .. v17}, Lcom/android/settings/wifi/WifiStatusReceiver;->access$1600(Lcom/android/settings/wifi/WifiStatusReceiver;)Ljava/lang/String;

    move-result-object v17

    if-eqz v17, :cond_5

    .line 781
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiStatusReceiver$VzwWISPrDataConnection;->this$0:Lcom/android/settings/wifi/WifiStatusReceiver;

    move-object/from16 v17, v0

    #getter for: Lcom/android/settings/wifi/WifiStatusReceiver;->mLoginURL:Ljava/lang/String;
    invoke-static/range {v17 .. v17}, Lcom/android/settings/wifi/WifiStatusReceiver;->access$1600(Lcom/android/settings/wifi/WifiStatusReceiver;)Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v17 .. v17}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v14

    .line 782
    .local v14, uri:Landroid/net/Uri;
    invoke-virtual {v14}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v7

    .line 784
    .local v7, host:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiStatusReceiver$VzwWISPrDataConnection;->this$0:Lcom/android/settings/wifi/WifiStatusReceiver;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/android/settings/wifi/WifiStatusReceiver;->getAcccountInfo()Lcom/android/settings/wifi/WISPrInfo;

    move-result-object v2

    .line 785
    .local v2, account:Lcom/android/settings/wifi/WISPrInfo;
    if-nez v2, :cond_4

    const/16 v17, 0x0

    goto/16 :goto_1

    .line 768
    .end local v2           #account:Lcom/android/settings/wifi/WISPrInfo;
    .end local v7           #host:Ljava/lang/String;
    .end local v14           #uri:Landroid/net/Uri;
    .restart local v5       #entity:Lorg/apache/http/HttpEntity;
    .restart local v11       #response:Lorg/apache/http/HttpResponse;
    .restart local v12       #result:Ljava/lang/String;
    .restart local v13       #statusCode:I
    .restart local v16       #wisprStr:Ljava/lang/String;
    :cond_3
    :try_start_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiStatusReceiver$VzwWISPrDataConnection;->this$0:Lcom/android/settings/wifi/WifiStatusReceiver;

    move-object/from16 v17, v0

    const-string v18, "WISPr not found"

    #calls: Lcom/android/settings/wifi/WifiStatusReceiver;->updateText(Ljava/lang/String;)V
    invoke-static/range {v17 .. v18}, Lcom/android/settings/wifi/WifiStatusReceiver;->access$2200(Lcom/android/settings/wifi/WifiStatusReceiver;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_3

    .line 771
    .end local v5           #entity:Lorg/apache/http/HttpEntity;
    .end local v11           #response:Lorg/apache/http/HttpResponse;
    .end local v12           #result:Ljava/lang/String;
    .end local v13           #statusCode:I
    .end local v16           #wisprStr:Ljava/lang/String;
    :catch_1
    move-exception v4

    .line 772
    .local v4, e:Ljava/lang/Exception;
    :try_start_3
    const-string v17, "WifiStatusReceiver"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "Exception: "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual {v4}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 773
    invoke-virtual {v10}, Lorg/apache/http/client/methods/HttpGet;->abort()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_3

    .line 775
    .end local v4           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v17

    invoke-virtual {v3}, Landroid/net/http/AndroidHttpClient;->close()V

    throw v17

    .line 788
    .restart local v2       #account:Lcom/android/settings/wifi/WISPrInfo;
    .restart local v7       #host:Ljava/lang/String;
    .restart local v14       #uri:Landroid/net/Uri;
    :cond_4
    const/4 v8, 0x0

    .restart local v8       #i:I
    :goto_4
    const/16 v17, 0x3

    move/from16 v0, v17

    if-ge v8, v0, :cond_5

    .line 789
    const-string v17, "WifiStatusReceiver"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "retry time="

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 790
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiStatusReceiver$VzwWISPrDataConnection;->this$0:Lcom/android/settings/wifi/WifiStatusReceiver;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiStatusReceiver$VzwWISPrDataConnection;->this$0:Lcom/android/settings/wifi/WifiStatusReceiver;

    move-object/from16 v18, v0

    #getter for: Lcom/android/settings/wifi/WifiStatusReceiver;->mLoginURL:Ljava/lang/String;
    invoke-static/range {v18 .. v18}, Lcom/android/settings/wifi/WifiStatusReceiver;->access$1600(Lcom/android/settings/wifi/WifiStatusReceiver;)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    #calls: Lcom/android/settings/wifi/WifiStatusReceiver;->postVZWAuthentication(Ljava/lang/String;Lcom/android/settings/wifi/WISPrInfo;)Z
    invoke-static {v0, v1, v2}, Lcom/android/settings/wifi/WifiStatusReceiver;->access$2300(Lcom/android/settings/wifi/WifiStatusReceiver;Ljava/lang/String;Lcom/android/settings/wifi/WISPrInfo;)Z

    move-result v17

    if-eqz v17, :cond_6

    .line 791
    const-string v17, "WifiStatusReceiver"

    const-string v18, "login successfully"

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 798
    .end local v2           #account:Lcom/android/settings/wifi/WISPrInfo;
    .end local v7           #host:Ljava/lang/String;
    .end local v8           #i:I
    .end local v14           #uri:Landroid/net/Uri;
    :cond_5
    const/16 v17, 0x0

    goto/16 :goto_1

    .line 788
    .restart local v2       #account:Lcom/android/settings/wifi/WISPrInfo;
    .restart local v7       #host:Ljava/lang/String;
    .restart local v8       #i:I
    .restart local v14       #uri:Landroid/net/Uri;
    :cond_6
    add-int/lit8 v8, v8, 0x1

    goto :goto_4
.end method
