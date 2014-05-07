.class public abstract Lcom/android/settings/framework/app/HtcPlainLegalAlertActivity;
.super Lcom/android/settings/framework/app/HtcInternalAlertActivity;
.source "HtcPlainLegalAlertActivity.java"


# static fields
.field private static final DEBUG:Z

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final TAG_INFO:Lcom/android/settings/framework/util/log/HtcLog$TagInfo;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 28
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Settings:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-class v1, Lcom/android/settings/framework/app/HtcPlainLegalAlertActivity;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/settings/framework/app/HtcPlainLegalAlertActivity;->TAG:Ljava/lang/String;

    .line 31
    sget-boolean v0, Lcom/android/settings/framework/flag/HtcSkuFlags;->isDebugMode:Z

    sput-boolean v0, Lcom/android/settings/framework/app/HtcPlainLegalAlertActivity;->DEBUG:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 25
    invoke-direct {p0}, Lcom/android/settings/framework/app/HtcInternalAlertActivity;-><init>()V

    .line 33
    new-instance v0, Lcom/android/settings/framework/util/log/HtcLog$TagInfo;

    sget-object v1, Lcom/android/settings/framework/app/HtcPlainLegalAlertActivity;->TAG:Ljava/lang/String;

    invoke-direct {v0, v1, p0}, Lcom/android/settings/framework/util/log/HtcLog$TagInfo;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/android/settings/framework/app/HtcPlainLegalAlertActivity;->TAG_INFO:Lcom/android/settings/framework/util/log/HtcLog$TagInfo;

    return-void
.end method


# virtual methods
.method protected getCustomMessage()Ljava/lang/String;
    .locals 1

    .prologue
    .line 130
    const/4 v0, 0x0

    return-object v0
.end method

.method protected getCustomMessageRawRes()I
    .locals 1

    .prologue
    .line 117
    const/4 v0, 0x0

    return v0
.end method

.method protected getCustomMessageStringRes()I
    .locals 1

    .prologue
    .line 106
    const/4 v0, 0x0

    return v0
.end method

.method protected getCustomTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 94
    const/4 v0, 0x0

    return-object v0
.end method

.method protected getCustomTitleRes()I
    .locals 1

    .prologue
    .line 84
    const/4 v0, 0x0

    return v0
.end method

.method protected getRaw(I)Ljava/lang/String;
    .locals 11
    .parameter "resId"

    .prologue
    .line 134
    const/16 v1, 0x1000

    .line 135
    .local v1, DEFAULT_CAPACITY:I
    const/16 v0, 0x400

    .line 137
    .local v0, BUFFER_SIZE:I
    const/4 v6, 0x0

    .line 139
    .local v6, reader:Ljava/io/BufferedReader;
    const/16 v8, 0x400

    new-array v2, v8, [C

    .line 144
    .local v2, buffer:[C
    :try_start_0
    new-instance v7, Ljava/io/BufferedReader;

    new-instance v8, Ljava/io/InputStreamReader;

    invoke-virtual {p0}, Lcom/android/settings/framework/app/HtcPlainLegalAlertActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    invoke-virtual {v9, p1}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v7, v8}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 146
    .end local v6           #reader:Ljava/io/BufferedReader;
    .local v7, reader:Ljava/io/BufferedReader;
    :try_start_1
    new-instance v3, Ljava/lang/StringBuilder;

    const/16 v8, 0x1000

    invoke-direct {v3, v8}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 150
    .local v3, content:Ljava/lang/StringBuilder;
    :goto_0
    invoke-virtual {v7, v2}, Ljava/io/BufferedReader;->read([C)I

    move-result v5

    .local v5, length:I
    const/4 v8, -0x1

    if-eq v5, v8, :cond_1

    .line 151
    const/4 v8, 0x0

    invoke-virtual {v3, v2, v8, v5}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 156
    .end local v3           #content:Ljava/lang/StringBuilder;
    .end local v5           #length:I
    :catch_0
    move-exception v4

    move-object v6, v7

    .line 157
    .end local v7           #reader:Ljava/io/BufferedReader;
    .local v4, e:Ljava/io/IOException;
    .restart local v6       #reader:Ljava/io/BufferedReader;
    :goto_1
    iget-object v8, p0, Lcom/android/settings/framework/app/HtcPlainLegalAlertActivity;->TAG_INFO:Lcom/android/settings/framework/util/log/HtcLog$TagInfo;

    const-string v9, "Failed to load the content!"

    invoke-static {v8, v9, v4}, Lcom/android/settings/framework/util/log/HtcLog;->e(Lcom/android/settings/framework/util/log/HtcLog$TagInfo;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 158
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v8, "Error!"

    invoke-direct {v3, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 161
    .end local v4           #e:Ljava/io/IOException;
    .restart local v3       #content:Ljava/lang/StringBuilder;
    :goto_2
    sget-boolean v8, Lcom/android/settings/framework/app/HtcPlainLegalAlertActivity;->DEBUG:Z

    if-eqz v8, :cond_0

    .line 162
    iget-object v8, p0, Lcom/android/settings/framework/app/HtcPlainLegalAlertActivity;->TAG_INFO:Lcom/android/settings/framework/util/log/HtcLog$TagInfo;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "getRaw(...)\n - length(content): "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/android/settings/framework/util/log/HtcLog;->v(Lcom/android/settings/framework/util/log/HtcLog$TagInfo;Ljava/lang/String;)I

    .line 165
    :cond_0
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    return-object v8

    .line 155
    .end local v6           #reader:Ljava/io/BufferedReader;
    .restart local v5       #length:I
    .restart local v7       #reader:Ljava/io/BufferedReader;
    :cond_1
    :try_start_2
    invoke-virtual {v7}, Ljava/io/BufferedReader;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    move-object v6, v7

    .line 159
    .end local v7           #reader:Ljava/io/BufferedReader;
    .restart local v6       #reader:Ljava/io/BufferedReader;
    goto :goto_2

    .line 156
    .end local v3           #content:Ljava/lang/StringBuilder;
    .end local v5           #length:I
    :catch_1
    move-exception v4

    goto :goto_1
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 7
    .parameter "savedInstanceState"

    .prologue
    .line 37
    invoke-super {p0, p1}, Lcom/android/settings/framework/app/HtcInternalAlertActivity;->onCreate(Landroid/os/Bundle;)V

    .line 39
    iget-object v2, p0, Lcom/android/settings/framework/app/HtcPlainLegalAlertActivity;->mAlertParams:Lcom/htc/app/HtcAlertController$AlertParams;

    .line 44
    .local v2, params:Lcom/htc/app/HtcAlertController$AlertParams;
    invoke-virtual {p0}, Lcom/android/settings/framework/app/HtcPlainLegalAlertActivity;->getCustomTitleRes()I

    move-result v3

    .local v3, resId:I
    if-eqz v3, :cond_0

    .line 45
    invoke-virtual {p0, v3}, Lcom/android/settings/framework/app/HtcPlainLegalAlertActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 49
    .local v4, title:Ljava/lang/String;
    :goto_0
    iput-object v4, v2, Lcom/htc/app/HtcAlertController$AlertParams;->mTitle:Ljava/lang/CharSequence;

    .line 52
    invoke-virtual {p0}, Lcom/android/settings/framework/app/HtcPlainLegalAlertActivity;->getCustomMessageStringRes()I

    move-result v3

    if-eqz v3, :cond_1

    .line 53
    invoke-virtual {p0, v3}, Lcom/android/settings/framework/app/HtcPlainLegalAlertActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 60
    .local v0, message:Ljava/lang/String;
    :goto_1
    iput-object v4, v2, Lcom/htc/app/HtcAlertController$AlertParams;->mTitle:Ljava/lang/CharSequence;

    .line 61
    iput-object v0, v2, Lcom/htc/app/HtcAlertController$AlertParams;->mMessage:Ljava/lang/CharSequence;

    .line 67
    invoke-virtual {p0}, Lcom/android/settings/framework/app/HtcPlainLegalAlertActivity;->setupAlert()V

    .line 72
    invoke-virtual {p0}, Lcom/android/settings/framework/app/HtcPlainLegalAlertActivity;->getWindow()Landroid/view/Window;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v5

    const v6, 0x2020062

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 74
    .local v1, messageView:Landroid/widget/TextView;
    invoke-static {}, Lcom/android/settings/framework/content/res/HtcResources;->getDefaultTypeface()Landroid/graphics/Typeface;

    move-result-object v5

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 75
    return-void

    .line 47
    .end local v0           #message:Ljava/lang/String;
    .end local v1           #messageView:Landroid/widget/TextView;
    .end local v4           #title:Ljava/lang/String;
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/framework/app/HtcPlainLegalAlertActivity;->getCustomTitle()Ljava/lang/String;

    move-result-object v4

    .restart local v4       #title:Ljava/lang/String;
    goto :goto_0

    .line 54
    :cond_1
    invoke-virtual {p0}, Lcom/android/settings/framework/app/HtcPlainLegalAlertActivity;->getCustomMessageRawRes()I

    move-result v3

    if-eqz v3, :cond_2

    .line 55
    invoke-virtual {p0, v3}, Lcom/android/settings/framework/app/HtcPlainLegalAlertActivity;->getRaw(I)Ljava/lang/String;

    move-result-object v0

    .restart local v0       #message:Ljava/lang/String;
    goto :goto_1

    .line 57
    .end local v0           #message:Ljava/lang/String;
    :cond_2
    invoke-virtual {p0}, Lcom/android/settings/framework/app/HtcPlainLegalAlertActivity;->getCustomMessage()Ljava/lang/String;

    move-result-object v0

    .restart local v0       #message:Ljava/lang/String;
    goto :goto_1
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 171
    const/16 v0, 0x54

    if-ne p1, v0, :cond_0

    .line 173
    const/4 v0, 0x1

    .line 175
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1, p2}, Lcom/android/settings/framework/app/HtcInternalAlertActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method
