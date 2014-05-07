.class public Lcom/android/settings/framework/core/fingerprint/HtcEnrolledFingerManager;
.super Ljava/lang/Object;
.source "HtcEnrolledFingerManager.java"


# static fields
.field private static final DATA_COLUMN_COUNT:I = 0x4

#the value of this static final field might be set in the static constructor
.field private static final DEBUG:Z = false

.field public static final FINGER_INDEX_LEFT_INDEX:I = 0x4

.field public static final FINGER_INDEX_LEFT_LITTLE:I = 0x1

.field public static final FINGER_INDEX_LEFT_MIDDLE:I = 0x3

.field public static final FINGER_INDEX_LEFT_RING:I = 0x2

.field public static final FINGER_INDEX_LEFT_THUMB:I = 0x5

.field public static final FINGER_INDEX_RIGHT_INDEX:I = 0x7

.field public static final FINGER_INDEX_RIGHT_LITTLE:I = 0xa

.field public static final FINGER_INDEX_RIGHT_MIDDLE:I = 0x8

.field public static final FINGER_INDEX_RIGHT_RING:I = 0x9

.field public static final FINGER_INDEX_RIGHT_THUMB:I = 0x6

.field private static final INDEX_FINGERPRINT_COMPONENT_NAME:I = 0x2

.field private static final INDEX_FINGERPRINT_DATA_ID:I = 0x0

.field private static final INDEX_FINGERPRINT_NAME:I = 0x3

.field private static final INDEX_FINGERPRINT_VISUAL_ID:I = 0x1

.field private static final KEY_PREFIX:Ljava/lang/String; = "enrolled_finger#"

.field public static final PREFIX_INDICATOR_BASIC:Ljava/lang/String; = "1"

.field public static final PREFIX_INDICATOR_CUST:Ljava/lang/String; = "2"

.field private static final SEPARATOR:Ljava/lang/String; = "\t"

.field private static final SHARED_PREFERENCE:Ljava/lang/String; = "enrolled_finger_manager"


# instance fields
.field private final TAG:Ljava/lang/String;

.field private mBuilder:Ljava/lang/StringBuilder;

.field private mContext:Landroid/content/Context;

.field private mEditor:Landroid/content/SharedPreferences$Editor;

.field private mPref:Landroid/content/SharedPreferences;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 15
    sget-boolean v0, Lcom/android/settings/framework/flag/HtcSkuFlags;->isDebugMode:Z

    sput-boolean v0, Lcom/android/settings/framework/core/fingerprint/HtcEnrolledFingerManager;->DEBUG:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    const-class v0, Lcom/android/settings/framework/core/fingerprint/HtcEnrolledFingerManager;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/framework/core/fingerprint/HtcEnrolledFingerManager;->TAG:Ljava/lang/String;

    .line 50
    iput-object p1, p0, Lcom/android/settings/framework/core/fingerprint/HtcEnrolledFingerManager;->mContext:Landroid/content/Context;

    .line 51
    const-string v0, "enrolled_finger_manager"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/framework/core/fingerprint/HtcEnrolledFingerManager;->mPref:Landroid/content/SharedPreferences;

    .line 52
    iget-object v0, p0, Lcom/android/settings/framework/core/fingerprint/HtcEnrolledFingerManager;->mPref:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/framework/core/fingerprint/HtcEnrolledFingerManager;->mEditor:Landroid/content/SharedPreferences$Editor;

    .line 54
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x200

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    iput-object v0, p0, Lcom/android/settings/framework/core/fingerprint/HtcEnrolledFingerManager;->mBuilder:Ljava/lang/StringBuilder;

    .line 55
    return-void
.end method

.method private convertToRecord(Ljava/lang/String;)Lcom/android/settings/framework/core/fingerprint/HtcEnrolledFingerRecord;
    .locals 7
    .parameter "value"

    .prologue
    const/4 v5, 0x4

    const/4 v3, 0x0

    .line 80
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    if-nez v4, :cond_1

    :cond_0
    move-object v2, v3

    .line 119
    :goto_0
    return-object v2

    .line 84
    :cond_1
    const-string v4, "\t"

    invoke-virtual {p1, v4, v5}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v1

    .line 85
    .local v1, fields:[Ljava/lang/String;
    array-length v4, v1

    if-eq v4, v5, :cond_2

    move-object v2, v3

    .line 86
    goto :goto_0

    .line 89
    :cond_2
    new-instance v2, Lcom/android/settings/framework/core/fingerprint/HtcEnrolledFingerRecord;

    invoke-direct {v2}, Lcom/android/settings/framework/core/fingerprint/HtcEnrolledFingerRecord;-><init>()V

    .line 93
    .local v2, record:Lcom/android/settings/framework/core/fingerprint/HtcEnrolledFingerRecord;
    const/4 v4, 0x0

    :try_start_0
    aget-object v4, v1, v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {v2, v4}, Lcom/android/settings/framework/core/fingerprint/HtcEnrolledFingerRecord;->setId(I)V

    .line 96
    const/4 v4, 0x1

    aget-object v4, v1, v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {v2, v4}, Lcom/android/settings/framework/core/fingerprint/HtcEnrolledFingerRecord;->setFingerIndex(I)V

    .line 99
    const/4 v4, 0x2

    aget-object v4, v1, v4

    if-eqz v4, :cond_4

    const/4 v4, 0x2

    aget-object v4, v1, v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_4

    .line 101
    const/4 v4, 0x2

    aget-object v4, v1, v4

    invoke-virtual {v2, v4}, Lcom/android/settings/framework/core/fingerprint/HtcEnrolledFingerRecord;->setComponentRawData(Ljava/lang/String;)V

    .line 107
    :goto_1
    const/4 v4, 0x3

    aget-object v4, v1, v4

    if-eqz v4, :cond_5

    const/4 v4, 0x3

    aget-object v4, v1, v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_5

    .line 108
    const/4 v4, 0x3

    aget-object v4, v1, v4

    invoke-virtual {v2, v4}, Lcom/android/settings/framework/core/fingerprint/HtcEnrolledFingerRecord;->setName(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 112
    :catch_0
    move-exception v0

    .line 113
    .local v0, e:Ljava/lang/Exception;
    sget-boolean v4, Lcom/android/settings/framework/core/fingerprint/HtcEnrolledFingerManager;->DEBUG:Z

    if-eqz v4, :cond_3

    .line 114
    iget-object v4, p0, Lcom/android/settings/framework/core/fingerprint/HtcEnrolledFingerManager;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "convertToRecord, value = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", e = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    move-object v2, v3

    .line 116
    goto :goto_0

    .line 103
    .end local v0           #e:Ljava/lang/Exception;
    :cond_4
    const/4 v4, 0x0

    :try_start_1
    invoke-virtual {v2, v4}, Lcom/android/settings/framework/core/fingerprint/HtcEnrolledFingerRecord;->setComponentRawData(Ljava/lang/String;)V

    goto :goto_1

    .line 110
    :cond_5
    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Lcom/android/settings/framework/core/fingerprint/HtcEnrolledFingerRecord;->setName(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0
.end method

.method private prepareKey(I)Ljava/lang/String;
    .locals 2
    .parameter "id"

    .prologue
    .line 58
    iget-object v0, p0, Lcom/android/settings/framework/core/fingerprint/HtcEnrolledFingerManager;->mBuilder:Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 59
    iget-object v0, p0, Lcom/android/settings/framework/core/fingerprint/HtcEnrolledFingerManager;->mBuilder:Ljava/lang/StringBuilder;

    const-string v1, "enrolled_finger#"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private prepareValue(Lcom/android/settings/framework/core/fingerprint/HtcEnrolledFingerRecord;)Ljava/lang/String;
    .locals 2
    .parameter "record"

    .prologue
    .line 63
    iget-object v0, p0, Lcom/android/settings/framework/core/fingerprint/HtcEnrolledFingerManager;->mBuilder:Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 65
    iget-object v0, p0, Lcom/android/settings/framework/core/fingerprint/HtcEnrolledFingerManager;->mBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/android/settings/framework/core/fingerprint/HtcEnrolledFingerRecord;->getId()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\t"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 67
    iget-object v0, p0, Lcom/android/settings/framework/core/fingerprint/HtcEnrolledFingerManager;->mBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/android/settings/framework/core/fingerprint/HtcEnrolledFingerRecord;->getFingerIndex()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\t"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 69
    invoke-virtual {p1}, Lcom/android/settings/framework/core/fingerprint/HtcEnrolledFingerRecord;->getComponentRawData()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 70
    iget-object v0, p0, Lcom/android/settings/framework/core/fingerprint/HtcEnrolledFingerManager;->mBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/android/settings/framework/core/fingerprint/HtcEnrolledFingerRecord;->getComponentRawData()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 72
    :cond_0
    iget-object v0, p0, Lcom/android/settings/framework/core/fingerprint/HtcEnrolledFingerManager;->mBuilder:Ljava/lang/StringBuilder;

    const-string v1, "\t"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 74
    iget-object v0, p0, Lcom/android/settings/framework/core/fingerprint/HtcEnrolledFingerManager;->mBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/android/settings/framework/core/fingerprint/HtcEnrolledFingerRecord;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 76
    iget-object v0, p0, Lcom/android/settings/framework/core/fingerprint/HtcEnrolledFingerManager;->mBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public addRecord(Lcom/android/settings/framework/core/fingerprint/HtcEnrolledFingerRecord;)Z
    .locals 3
    .parameter "record"

    .prologue
    .line 123
    if-nez p1, :cond_0

    .line 124
    const/4 v2, 0x0

    .line 133
    :goto_0
    return v2

    .line 127
    :cond_0
    invoke-virtual {p1}, Lcom/android/settings/framework/core/fingerprint/HtcEnrolledFingerRecord;->getId()I

    move-result v2

    invoke-direct {p0, v2}, Lcom/android/settings/framework/core/fingerprint/HtcEnrolledFingerManager;->prepareKey(I)Ljava/lang/String;

    move-result-object v0

    .line 128
    .local v0, key:Ljava/lang/String;
    invoke-direct {p0, p1}, Lcom/android/settings/framework/core/fingerprint/HtcEnrolledFingerManager;->prepareValue(Lcom/android/settings/framework/core/fingerprint/HtcEnrolledFingerRecord;)Ljava/lang/String;

    move-result-object v1

    .line 130
    .local v1, value:Ljava/lang/String;
    iget-object v2, p0, Lcom/android/settings/framework/core/fingerprint/HtcEnrolledFingerManager;->mEditor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v2, v0, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 131
    iget-object v2, p0, Lcom/android/settings/framework/core/fingerprint/HtcEnrolledFingerManager;->mEditor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 133
    const/4 v2, 0x1

    goto :goto_0
.end method

.method public getRecordById(I)Lcom/android/settings/framework/core/fingerprint/HtcEnrolledFingerRecord;
    .locals 4
    .parameter "id"

    .prologue
    .line 146
    invoke-direct {p0, p1}, Lcom/android/settings/framework/core/fingerprint/HtcEnrolledFingerManager;->prepareKey(I)Ljava/lang/String;

    move-result-object v0

    .line 148
    .local v0, key:Ljava/lang/String;
    iget-object v2, p0, Lcom/android/settings/framework/core/fingerprint/HtcEnrolledFingerManager;->mPref:Landroid/content/SharedPreferences;

    const/4 v3, 0x0

    invoke-interface {v2, v0, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 149
    .local v1, value:Ljava/lang/String;
    invoke-direct {p0, v1}, Lcom/android/settings/framework/core/fingerprint/HtcEnrolledFingerManager;->convertToRecord(Ljava/lang/String;)Lcom/android/settings/framework/core/fingerprint/HtcEnrolledFingerRecord;

    move-result-object v2

    return-object v2
.end method

.method public getRecords()Ljava/util/ArrayList;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/settings/framework/core/fingerprint/HtcEnrolledFingerRecord;",
            ">;"
        }
    .end annotation

    .prologue
    .line 154
    iget-object v6, p0, Lcom/android/settings/framework/core/fingerprint/HtcEnrolledFingerManager;->mPref:Landroid/content/SharedPreferences;

    invoke-interface {v6}, Landroid/content/SharedPreferences;->getAll()Ljava/util/Map;

    move-result-object v3

    check-cast v3, Ljava/util/HashMap;

    .line 155
    .local v3, map:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-virtual {v3}, Ljava/util/HashMap;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 156
    const/4 v2, 0x0

    .line 175
    :cond_0
    return-object v2

    .line 159
    :cond_1
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 162
    .local v2, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/settings/framework/core/fingerprint/HtcEnrolledFingerRecord;>;"
    invoke-virtual {v3}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_2
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 163
    .local v1, key:Ljava/lang/String;
    const-string v6, "enrolled_finger#"

    invoke-virtual {v1, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 167
    invoke-virtual {v3, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 168
    .local v5, value:Ljava/lang/String;
    invoke-direct {p0, v5}, Lcom/android/settings/framework/core/fingerprint/HtcEnrolledFingerManager;->convertToRecord(Ljava/lang/String;)Lcom/android/settings/framework/core/fingerprint/HtcEnrolledFingerRecord;

    move-result-object v4

    .line 170
    .local v4, record:Lcom/android/settings/framework/core/fingerprint/HtcEnrolledFingerRecord;
    if-eqz v4, :cond_2

    .line 171
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public removeRecordById(I)Z
    .locals 2
    .parameter "id"

    .prologue
    .line 137
    invoke-direct {p0, p1}, Lcom/android/settings/framework/core/fingerprint/HtcEnrolledFingerManager;->prepareKey(I)Ljava/lang/String;

    move-result-object v0

    .line 139
    .local v0, key:Ljava/lang/String;
    iget-object v1, p0, Lcom/android/settings/framework/core/fingerprint/HtcEnrolledFingerManager;->mEditor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v1, v0}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 140
    iget-object v1, p0, Lcom/android/settings/framework/core/fingerprint/HtcEnrolledFingerManager;->mEditor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 142
    const/4 v1, 0x1

    return v1
.end method
