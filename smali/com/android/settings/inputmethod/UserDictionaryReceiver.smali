.class public Lcom/android/settings/inputmethod/UserDictionaryReceiver;
.super Landroid/content/BroadcastReceiver;
.source "UserDictionaryReceiver.java"


# static fields
.field private static final DEBUG:Z = false

.field private static final DELETE_SELECTION:Ljava/lang/String; = "word=? AND shortcut IS NULL"

.field private static final FREQUENCY_FOR_USER_DICTIONARY_ADDS:I = 0xfa

.field private static final GET_WORD_PROJECTION:[Ljava/lang/String; = null

.field private static final LOG_TAG:Ljava/lang/String; = "UserDictionaryReceiver"

.field private static final LS:Ljava/lang/String; = "\'s"


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 19
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "word"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "shortcut"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/settings/inputmethod/UserDictionaryReceiver;->GET_WORD_PROJECTION:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method private addWord(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2
    .parameter "context"
    .parameter "word"

    .prologue
    .line 44
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 56
    :cond_0
    :goto_0
    return-void

    .line 50
    :cond_1
    invoke-direct {p0, p1, p2}, Lcom/android/settings/inputmethod/UserDictionaryReceiver;->deleteWord(Landroid/content/Context;Ljava/lang/String;)V

    .line 54
    const/16 v0, 0xfa

    const/4 v1, 0x1

    invoke-static {p1, p2, v0, v1}, Landroid/provider/UserDictionary$Words;->addWord(Landroid/content/Context;Ljava/lang/String;II)V

    goto :goto_0
.end method

.method private deleteWord(Landroid/content/Context;Ljava/lang/String;)V
    .locals 5
    .parameter "context"
    .parameter "word"

    .prologue
    .line 39
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/UserDictionary$Words;->CONTENT_URI:Landroid/net/Uri;

    const-string v2, "word=? AND shortcut IS NULL"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    aput-object p2, v3, v4

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 41
    return-void
.end method

.method private doesWordHaveShortCut(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 9
    .parameter "context"
    .parameter "word"

    .prologue
    const/4 v7, 0x1

    const/4 v8, 0x0

    .line 82
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/UserDictionary$Words;->CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lcom/android/settings/inputmethod/UserDictionaryReceiver;->GET_WORD_PROJECTION:[Ljava/lang/String;

    const-string v3, "word=? AND shortcut NOTNULL AND shortcut != \'\'"

    new-array v4, v7, [Ljava/lang/String;

    aput-object p2, v4, v8

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 92
    .local v6, cursor:Landroid/database/Cursor;
    if-nez v6, :cond_1

    .line 95
    if-eqz v6, :cond_0

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 93
    :cond_0
    :goto_0
    return v8

    :cond_1
    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-lez v0, :cond_3

    move v0, v7

    .line 95
    :goto_1
    if-eqz v6, :cond_2

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_2
    move v8, v0

    .line 93
    goto :goto_0

    :cond_3
    move v0, v8

    goto :goto_1

    .line 95
    :catchall_0
    move-exception v0

    if-eqz v6, :cond_4

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_4
    throw v0
.end method

.method private doesWordHaveShortCut_dumpQueryInfo(Landroid/database/Cursor;)V
    .locals 12
    .parameter "cursor"

    .prologue
    const/4 v11, 0x2

    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 100
    if-nez p1, :cond_1

    .line 101
    const-string v5, "UserDictionaryReceiver"

    const-string v6, "[getWord_dumpWordInfo] cursor is null."

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 122
    :cond_0
    return-void

    .line 105
    :cond_1
    const/4 v4, 0x0

    .line 106
    .local v4, wordCnt:I
    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 107
    const-string v5, "word"

    invoke-interface {p1, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    .line 108
    .local v1, indexWord:I
    const-string v5, "shortcut"

    invoke-interface {p1, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 109
    .local v0, indexShortcut:I
    :goto_0
    invoke-interface {p1}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v5

    if-nez v5, :cond_0

    .line 110
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 111
    .local v3, word:Ljava/lang/String;
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 113
    .local v2, shortcut:Ljava/lang/String;
    if-eqz v2, :cond_2

    .line 114
    const-string v5, "UserDictionaryReceiver"

    const-string v6, "[getWord_dumpWordInfo] #%d: <%s> => <%s>"

    const/4 v7, 0x3

    new-array v7, v7, [Ljava/lang/Object;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v9

    aput-object v2, v7, v10

    aput-object v3, v7, v11

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 118
    :goto_1
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    .line 119
    add-int/lit8 v4, v4, 0x1

    .line 120
    goto :goto_0

    .line 116
    :cond_2
    const-string v5, "UserDictionaryReceiver"

    const-string v6, "[getWord_dumpWordInfo] #%d: word = <%s>"

    new-array v7, v11, [Ljava/lang/Object;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v9

    aput-object v3, v7, v10

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method private insertWordIntoUDB(Landroid/content/Context;Ljava/lang/String;)V
    .locals 6
    .parameter "context"
    .parameter "word"

    .prologue
    .line 67
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 78
    :cond_0
    :goto_0
    return-void

    .line 69
    :cond_1
    invoke-direct {p0, p2}, Lcom/android/settings/inputmethod/UserDictionaryReceiver;->peelInputLotus(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 71
    :try_start_0
    new-instance v2, Landroid/content/ContentValues;

    const/4 v3, 0x1

    invoke-direct {v2, v3}, Landroid/content/ContentValues;-><init>(I)V

    .line 72
    .local v2, values:Landroid/content/ContentValues;
    const-string v3, "word"

    invoke-virtual {v2, v3, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 73
    const-string v3, "content://htc_ime"

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    const-string v4, "alphabet_udb_words"

    invoke-static {v3, v4}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 74
    .local v1, provider_uri:Landroid/net/Uri;
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    invoke-virtual {v3, v1, v2}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 75
    .end local v1           #provider_uri:Landroid/net/Uri;
    .end local v2           #values:Landroid/content/ContentValues;
    :catch_0
    move-exception v0

    .line 76
    .local v0, e:Ljava/lang/IllegalArgumentException;
    const-string v3, "UserDictionaryReceiver"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Can\'t call HTCIME provider to add word e="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private peelInputLotus(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter "input"

    .prologue
    .line 60
    const-string v0, "\'s"

    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 61
    const/4 v0, 0x0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    const-string v2, "\'s"

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    .line 63
    .end local p1
    :cond_0
    return-object p1
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 27
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 36
    :cond_0
    :goto_0
    return-void

    .line 30
    :cond_1
    const-string v1, "com.android.settings.USER_DICTIONARY_INSERT"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 31
    const-string v1, "word"

    invoke-virtual {p2, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 33
    .local v0, word:Ljava/lang/String;
    invoke-direct {p0, p1, v0}, Lcom/android/settings/inputmethod/UserDictionaryReceiver;->insertWordIntoUDB(Landroid/content/Context;Ljava/lang/String;)V

    .line 34
    invoke-direct {p0, p1, v0}, Lcom/android/settings/inputmethod/UserDictionaryReceiver;->addWord(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0
.end method
