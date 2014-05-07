.class public Lcom/android/settings/wifi/WISPrManager;
.super Ljava/lang/Object;
.source "WISPrManager.java"


# static fields
.field private static final AUTO_LOGIN:Ljava/lang/String; = "auto_login"

.field private static INSTANCE:Lcom/android/settings/wifi/WISPrManager; = null

.field private static final TAG:Ljava/lang/String; = "WISPrManager"

.field private static final WISPR_SHARE_NAME:Ljava/lang/String; = "wispr"

.field private static final WISPrTagName:Ljava/lang/String; = "WISPAccessGatewayParam"


# instance fields
.field private final EVENT_UPDATE_UI:I

.field mContext:Landroid/content/Context;

.field public mHandler:Landroid/os/Handler;

.field private mInitialized:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/settings/wifi/WISPrManager;->EVENT_UPDATE_UI:I

    .line 41
    return-void
.end method

.method public constructor <init>(Landroid/os/Handler;)V
    .locals 1
    .parameter "handler"

    .prologue
    .line 119
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/settings/wifi/WISPrManager;->EVENT_UPDATE_UI:I

    .line 120
    iput-object p1, p0, Lcom/android/settings/wifi/WISPrManager;->mHandler:Landroid/os/Handler;

    .line 121
    return-void
.end method

.method public static detectWISPr(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .parameter "content"

    .prologue
    const/4 v2, 0x0

    .line 105
    if-nez p0, :cond_1

    .line 115
    :cond_0
    :goto_0
    return-object v2

    .line 107
    :cond_1
    const-string v3, "<WISPAccessGatewayParam"

    invoke-virtual {p0, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    .line 108
    .local v1, start:I
    if-ltz v1, :cond_0

    .line 110
    const-string v3, "</WISPAccessGatewayParam>"

    invoke-virtual {p0, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    const-string v4, "WISPAccessGatewayParam"

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/2addr v3, v4

    add-int/lit8 v0, v3, 0x3

    .line 112
    .local v0, end:I
    if-ltz v0, :cond_0

    .line 115
    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    goto :goto_0
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/android/settings/wifi/WISPrManager;
    .locals 2
    .parameter "context"

    .prologue
    .line 46
    const-class v1, Lcom/android/settings/wifi/WISPrManager;

    monitor-enter v1

    .line 47
    :try_start_0
    sget-object v0, Lcom/android/settings/wifi/WISPrManager;->INSTANCE:Lcom/android/settings/wifi/WISPrManager;

    if-nez v0, :cond_0

    .line 48
    new-instance v0, Lcom/android/settings/wifi/WISPrManager;

    invoke-direct {v0}, Lcom/android/settings/wifi/WISPrManager;-><init>()V

    sput-object v0, Lcom/android/settings/wifi/WISPrManager;->INSTANCE:Lcom/android/settings/wifi/WISPrManager;

    .line 51
    :cond_0
    sget-object v0, Lcom/android/settings/wifi/WISPrManager;->INSTANCE:Lcom/android/settings/wifi/WISPrManager;

    invoke-direct {v0, p0}, Lcom/android/settings/wifi/WISPrManager;->init(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 52
    const/4 v0, 0x0

    monitor-exit v1

    .line 54
    :goto_0
    return-object v0

    :cond_1
    sget-object v0, Lcom/android/settings/wifi/WISPrManager;->INSTANCE:Lcom/android/settings/wifi/WISPrManager;

    monitor-exit v1

    goto :goto_0

    .line 55
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private getSharedPreferences()Landroid/content/SharedPreferences;
    .locals 3

    .prologue
    .line 244
    iget-object v0, p0, Lcom/android/settings/wifi/WISPrManager;->mContext:Landroid/content/Context;

    const-string v1, "wispr"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    return-object v0
.end method

.method private init(Landroid/content/Context;)Z
    .locals 2
    .parameter "context"

    .prologue
    const/4 v1, 0x1

    .line 59
    iget-boolean v0, p0, Lcom/android/settings/wifi/WISPrManager;->mInitialized:Z

    if-eqz v0, :cond_0

    .line 65
    :goto_0
    return v1

    .line 60
    :cond_0
    iput-boolean v1, p0, Lcom/android/settings/wifi/WISPrManager;->mInitialized:Z

    .line 63
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/wifi/WISPrManager;->mContext:Landroid/content/Context;

    goto :goto_0
.end method

.method public static setHandler(Landroid/os/Handler;)V
    .locals 0
    .parameter "handler"

    .prologue
    .line 231
    return-void
.end method

.method private showMapValue(Ljava/util/HashMap;)V
    .locals 5
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 221
    .local p1, map:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-virtual {p1}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 222
    .local v0, iterator:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 223
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 224
    .local v1, key:Ljava/lang/String;
    invoke-virtual {p1, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 225
    .local v2, value:Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "key: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", value="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/settings/wifi/WISPrManager;->updateUI(Ljava/lang/String;)V

    goto :goto_0

    .line 227
    .end local v1           #key:Ljava/lang/String;
    .end local v2           #value:Ljava/lang/String;
    :cond_0
    return-void
.end method

.method public static updateUI(Ljava/lang/String;)V
    .locals 0
    .parameter "text"

    .prologue
    .line 255
    return-void
.end method


# virtual methods
.method public isAutoLoginOn()Z
    .locals 3

    .prologue
    .line 240
    invoke-direct {p0}, Lcom/android/settings/wifi/WISPrManager;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "auto_login"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public parseAuthReplyWISPr(Ljava/lang/String;)Ljava/util/HashMap;
    .locals 10
    .parameter "s"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v9, 0x1

    .line 125
    const/4 v1, 0x1

    .line 129
    .local v1, eventType:I
    :try_start_0
    invoke-static {}, Lorg/xmlpull/v1/XmlPullParserFactory;->newInstance()Lorg/xmlpull/v1/XmlPullParserFactory;

    move-result-object v2

    .line 130
    .local v2, factory:Lorg/xmlpull/v1/XmlPullParserFactory;
    const/4 v7, 0x1

    invoke-virtual {v2, v7}, Lorg/xmlpull/v1/XmlPullParserFactory;->setNamespaceAware(Z)V

    .line 131
    invoke-virtual {v2}, Lorg/xmlpull/v1/XmlPullParserFactory;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v6

    .line 132
    .local v6, xpp:Lorg/xmlpull/v1/XmlPullParser;
    new-instance v7, Ljava/io/StringReader;

    invoke-direct {v7, p1}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    invoke-interface {v6, v7}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/Reader;)V

    .line 133
    invoke-interface {v6}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 139
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 141
    .local v3, map:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v5, 0x0

    .line 143
    .local v5, text:Ljava/lang/String;
    :goto_0
    if-eq v1, v9, :cond_0

    .line 146
    packed-switch v1, :pswitch_data_0

    .line 162
    :goto_1
    :try_start_1
    invoke-interface {v6}, Lorg/xmlpull/v1/XmlPullParser;->next()I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result v1

    goto :goto_0

    .line 135
    .end local v2           #factory:Lorg/xmlpull/v1/XmlPullParserFactory;
    .end local v3           #map:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v5           #text:Ljava/lang/String;
    .end local v6           #xpp:Lorg/xmlpull/v1/XmlPullParser;
    :catch_0
    move-exception v0

    .line 136
    .local v0, e:Ljava/lang/Exception;
    const/4 v3, 0x0

    .line 169
    .end local v0           #e:Ljava/lang/Exception;
    :goto_2
    return-object v3

    .line 148
    .restart local v2       #factory:Lorg/xmlpull/v1/XmlPullParserFactory;
    .restart local v3       #map:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .restart local v5       #text:Ljava/lang/String;
    .restart local v6       #xpp:Lorg/xmlpull/v1/XmlPullParser;
    :pswitch_0
    const/4 v5, 0x0

    .line 149
    goto :goto_1

    .line 151
    :pswitch_1
    invoke-interface {v6}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v4

    .line 152
    .local v4, name:Ljava/lang/String;
    invoke-interface {v6}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 155
    .end local v4           #name:Ljava/lang/String;
    :pswitch_2
    invoke-interface {v6}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v5

    .line 156
    goto :goto_1

    .line 163
    :catch_1
    move-exception v0

    .line 164
    .restart local v0       #e:Ljava/lang/Exception;
    const-string v7, "WISPrManager"

    const-string v8, "xml parsing error"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 165
    const/4 v3, 0x0

    goto :goto_0

    .line 168
    .end local v0           #e:Ljava/lang/Exception;
    :cond_0
    invoke-direct {p0, v3}, Lcom/android/settings/wifi/WISPrManager;->showMapValue(Ljava/util/HashMap;)V

    goto :goto_2

    .line 146
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public parseWISPr(Ljava/lang/String;)Ljava/util/HashMap;
    .locals 9
    .parameter "s"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v8, 0x1

    .line 175
    const/4 v1, 0x1

    .line 179
    .local v1, eventType:I
    :try_start_0
    invoke-static {}, Lorg/xmlpull/v1/XmlPullParserFactory;->newInstance()Lorg/xmlpull/v1/XmlPullParserFactory;

    move-result-object v2

    .line 180
    .local v2, factory:Lorg/xmlpull/v1/XmlPullParserFactory;
    const/4 v7, 0x1

    invoke-virtual {v2, v7}, Lorg/xmlpull/v1/XmlPullParserFactory;->setNamespaceAware(Z)V

    .line 181
    invoke-virtual {v2}, Lorg/xmlpull/v1/XmlPullParserFactory;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v6

    .line 182
    .local v6, xpp:Lorg/xmlpull/v1/XmlPullParser;
    new-instance v7, Ljava/io/StringReader;

    invoke-direct {v7, p1}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    invoke-interface {v6, v7}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/Reader;)V

    .line 183
    invoke-interface {v6}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 189
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 191
    .local v3, map:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v5, 0x0

    .line 193
    .local v5, text:Ljava/lang/String;
    :goto_0
    if-eq v1, v8, :cond_0

    .line 196
    packed-switch v1, :pswitch_data_0

    .line 211
    :goto_1
    :try_start_1
    invoke-interface {v6}, Lorg/xmlpull/v1/XmlPullParser;->next()I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result v1

    goto :goto_0

    .line 185
    .end local v2           #factory:Lorg/xmlpull/v1/XmlPullParserFactory;
    .end local v3           #map:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v5           #text:Ljava/lang/String;
    .end local v6           #xpp:Lorg/xmlpull/v1/XmlPullParser;
    :catch_0
    move-exception v0

    .line 186
    .local v0, e:Ljava/lang/Exception;
    const/4 v3, 0x0

    .line 217
    .end local v0           #e:Ljava/lang/Exception;
    :goto_2
    return-object v3

    .line 198
    .restart local v2       #factory:Lorg/xmlpull/v1/XmlPullParserFactory;
    .restart local v3       #map:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .restart local v5       #text:Ljava/lang/String;
    .restart local v6       #xpp:Lorg/xmlpull/v1/XmlPullParser;
    :pswitch_0
    const/4 v5, 0x0

    .line 199
    goto :goto_1

    .line 201
    :pswitch_1
    invoke-interface {v6}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v4

    .line 202
    .local v4, name:Ljava/lang/String;
    invoke-interface {v6}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 205
    .end local v4           #name:Ljava/lang/String;
    :pswitch_2
    invoke-interface {v6}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v5

    .line 206
    goto :goto_1

    .line 212
    :catch_1
    move-exception v0

    .line 213
    .restart local v0       #e:Ljava/lang/Exception;
    const/4 v3, 0x0

    goto :goto_0

    .line 216
    .end local v0           #e:Ljava/lang/Exception;
    :cond_0
    invoke-direct {p0, v3}, Lcom/android/settings/wifi/WISPrManager;->showMapValue(Ljava/util/HashMap;)V

    goto :goto_2

    .line 196
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public persistWISPrAutoLogin(Z)V
    .locals 2
    .parameter "autologin"

    .prologue
    .line 234
    invoke-direct {p0}, Lcom/android/settings/wifi/WISPrManager;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 235
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    const-string v1, "auto_login"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 236
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 237
    return-void
.end method

.method public validateAuthReplyWISPr(Ljava/util/HashMap;)Z
    .locals 6
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .local p1, map:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v2, 0x0

    .line 69
    if-nez p1, :cond_1

    .line 85
    :cond_0
    :goto_0
    return v2

    .line 75
    :cond_1
    const-string v3, "ResponseCode"

    invoke-virtual {p1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 76
    .local v1, respCode:Ljava/lang/String;
    const-string v3, "WISPrManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Reply code: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 77
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "50"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 81
    const-string v3, "MessageType"

    invoke-virtual {p1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 82
    .local v0, msgType:Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "MsgType: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/settings/wifi/WISPrManager;->updateUI(Ljava/lang/String;)V

    .line 83
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 85
    const/4 v2, 0x1

    goto :goto_0
.end method

.method public validateWISPr(Ljava/util/HashMap;)Z
    .locals 6
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .local p1, map:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v3, 0x0

    .line 89
    if-nez p1, :cond_1

    .line 101
    :cond_0
    :goto_0
    return v3

    .line 91
    :cond_1
    const-string v4, "LoginURL"

    invoke-virtual {p1, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 92
    .local v2, url:Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 94
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "LoginURL: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/settings/wifi/WISPrManager;->updateUI(Ljava/lang/String;)V

    .line 96
    const-string v4, "AccessProcedure"

    invoke-virtual {p1, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 97
    .local v1, procedure:Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    const-string v4, "1.0"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 99
    const-string v4, "MessageType"

    invoke-virtual {p1, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 100
    .local v0, msgType:Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    const-string v4, "100"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 101
    const/4 v3, 0x1

    goto :goto_0
.end method
