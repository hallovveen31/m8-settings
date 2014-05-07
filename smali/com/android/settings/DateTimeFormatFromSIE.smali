.class public Lcom/android/settings/DateTimeFormatFromSIE;
.super Ljava/lang/Object;
.source "DateTimeFormatFromSIE.java"


# static fields
.field private static final CATEGORY_MODULE_APPLICATION_SETTINGS:Ljava/lang/String; = "application_Settings"

.field private static final CATEGORY_MODULE_SYSTEM_DEFAULT_TIME_FORMAT_SETTINGS:Ljava/lang/String; = "system_defaultTimeFormatSetting"

.field private static final CATEGORY_MODULE_SYSTEM_DEFAULT_TIME_FORMAT_SETTINGS_SHORT:Ljava/lang/String; = "system_defaultTimeFormatSettingShort"

#the value of this static final field might be set in the static constructor
.field private static final DEBUG_FLAG:Z = false

.field private static final TAG:Ljava/lang/String; = "DateTimeFormatFromSIE"

.field private static final URI_STRING:Ljava/lang/String; = "content://customization_settings/SettingTable/"

.field private static mIsUseSIEDateFormatList:Z

.field private static mSIEDateFormats:[Ljava/lang/String;

.field private static mSIEDateFormatsShort:[Ljava/lang/String;

.field private static mSIEDefaultTimeFormatSetting:Ljava/lang/String;

.field private static mSIEDefaultTimeFormatSettingShort:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v1, 0x0

    sget-boolean v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    sput-boolean v0, Lcom/android/settings/DateTimeFormatFromSIE;->DEBUG_FLAG:Z

    sput-object v1, Lcom/android/settings/DateTimeFormatFromSIE;->mSIEDateFormats:[Ljava/lang/String;

    sput-object v1, Lcom/android/settings/DateTimeFormatFromSIE;->mSIEDateFormatsShort:[Ljava/lang/String;

    sput-object v1, Lcom/android/settings/DateTimeFormatFromSIE;->mSIEDefaultTimeFormatSetting:Ljava/lang/String;

    sput-object v1, Lcom/android/settings/DateTimeFormatFromSIE;->mSIEDefaultTimeFormatSettingShort:Ljava/lang/String;

    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/settings/DateTimeFormatFromSIE;->mIsUseSIEDateFormatList:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static SIELogMsg(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    sget-boolean v0, Lcom/android/settings/DateTimeFormatFromSIE;->DEBUG_FLAG:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "sie> \""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method private static getDateFormatListBySIE(Landroid/content/Context;)[Ljava/lang/String;
    .locals 19

    sget-boolean v3, Lcom/android/settings/DateTimeFormatFromSIE;->DEBUG_FLAG:Z

    if-eqz v3, :cond_0

    const-string v3, "DateTimeFormatFromSIE"

    const-string v4, "getDateFormatListBySIE: get date format list from SIE"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 v12, 0x0

    const/4 v10, 0x0

    const/4 v9, 0x0

    :try_start_0
    const-string v3, "content://customization_settings/SettingTable/application_Settings"

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    sget-boolean v3, Lcom/android/settings/DateTimeFormatFromSIE;->DEBUG_FLAG:Z

    if-eqz v3, :cond_1

    const-string v3, "DateTimeFormatFromSIE"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getDateFormatListBySIE: SIE customization uri = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    invoke-virtual {v8, v2}, Landroid/content/ContentResolver;->acquireUnstableContentProviderClient(Landroid/net/Uri;)Landroid/content/ContentProviderClient;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v1

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    :try_start_1
    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentProviderClient;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    if-eqz v9, :cond_2

    invoke-interface {v9}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_2

    const-string v3, "value"

    invoke-interface {v9, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v9, v3}, Landroid/database/Cursor;->getBlob(I)[B
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v10

    :cond_2
    if-eqz v9, :cond_3

    :try_start_2
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    const/4 v9, 0x0

    :cond_3
    if-eqz v1, :cond_4

    invoke-virtual {v1}, Landroid/content/ContentProviderClient;->release()Z

    const/4 v1, 0x0

    :cond_4
    :goto_0
    if-eqz v10, :cond_c

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v17

    const/4 v3, 0x0

    array-length v4, v10

    move-object/from16 v0, v17

    invoke-virtual {v0, v10, v3, v4}, Landroid/os/Parcel;->unmarshall([BII)V

    const/4 v3, 0x0

    move-object/from16 v0, v17

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->setDataPosition(I)V

    new-instance v7, Landroid/os/Bundle;

    invoke-direct {v7}, Landroid/os/Bundle;-><init>()V

    move-object/from16 v0, v17

    invoke-virtual {v7, v0}, Landroid/os/Bundle;->readFromParcel(Landroid/os/Parcel;)V

    const-string v3, "date_format_list"

    invoke-virtual {v7, v3}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v14

    if-eqz v14, :cond_b

    invoke-virtual {v14}, Landroid/os/Bundle;->size()I

    move-result v18

    const/4 v15, 0x0

    :goto_1
    move/from16 v0, v18

    if-ge v15, v0, :cond_9

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "plenty_set"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    add-int/lit8 v4, v15, 0x1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v14, v0}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v11

    if-eqz v11, :cond_a

    const/4 v3, 0x6

    new-array v12, v3, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "date_format1"

    const-string v5, ""

    invoke-static {v11, v4, v5}, Lcom/android/settings/DateTimeFormatFromSIE;->getStringValue(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v12, v3

    const/4 v3, 0x1

    const-string v4, "date_format2"

    const-string v5, ""

    invoke-static {v11, v4, v5}, Lcom/android/settings/DateTimeFormatFromSIE;->getStringValue(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v12, v3

    const/4 v3, 0x2

    const-string v4, "date_format3"

    const-string v5, ""

    invoke-static {v11, v4, v5}, Lcom/android/settings/DateTimeFormatFromSIE;->getStringValue(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v12, v3

    const/4 v3, 0x3

    const-string v4, "date_format4"

    const-string v5, ""

    invoke-static {v11, v4, v5}, Lcom/android/settings/DateTimeFormatFromSIE;->getStringValue(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v12, v3

    const/4 v3, 0x4

    const-string v4, "date_format5"

    const-string v5, ""

    invoke-static {v11, v4, v5}, Lcom/android/settings/DateTimeFormatFromSIE;->getStringValue(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v12, v3

    const/4 v3, 0x5

    const-string v4, "date_format6"

    const-string v5, ""

    invoke-static {v11, v4, v5}, Lcom/android/settings/DateTimeFormatFromSIE;->getStringValue(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v12, v3

    const-string v3, "DateTimeFormatFromSIE"

    const-string v4, "Date format list is read from SIE"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    :cond_5
    :goto_2
    add-int/lit8 v15, v15, 0x1

    goto :goto_1

    :catch_0
    move-exception v13

    :try_start_3
    const-string v3, "DateTimeFormatFromSIE"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getDateFormatListBySIE: query failed e = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v13}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-eqz v9, :cond_6

    :try_start_4
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    const/4 v9, 0x0

    :cond_6
    if-eqz v1, :cond_4

    invoke-virtual {v1}, Landroid/content/ContentProviderClient;->release()Z

    const/4 v1, 0x0

    goto/16 :goto_0

    :catchall_0
    move-exception v3

    if-eqz v9, :cond_7

    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    const/4 v9, 0x0

    :cond_7
    if-eqz v1, :cond_8

    invoke-virtual {v1}, Landroid/content/ContentProviderClient;->release()Z

    const/4 v1, 0x0

    :cond_8
    throw v3
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    :catch_1
    move-exception v13

    const-string v3, "DateTimeFormatFromSIE"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getDateFormatListBySIE: get date format list failed e = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v13}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_9
    :goto_3
    return-object v12

    :cond_a
    :try_start_5
    sget-boolean v3, Lcom/android/settings/DateTimeFormatFromSIE;->DEBUG_FLAG:Z

    if-eqz v3, :cond_5

    const-string v3, "DateTimeFormatFromSIE"

    const-string v4, "getDateFormatListBySIE: no plenty_set attribute"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :cond_b
    sget-boolean v3, Lcom/android/settings/DateTimeFormatFromSIE;->DEBUG_FLAG:Z

    if-eqz v3, :cond_9

    const-string v3, "DateTimeFormatFromSIE"

    const-string v4, "getDateFormatListBySIE: no date_format_list attribute"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    :cond_c
    const-string v3, "DateTimeFormatFromSIE"

    const-string v4, "Date format list is empty"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1

    goto :goto_3
.end method

.method private static getDateFormatListShortBySIE(Landroid/content/Context;)[Ljava/lang/String;
    .locals 19

    sget-boolean v3, Lcom/android/settings/DateTimeFormatFromSIE;->DEBUG_FLAG:Z

    if-eqz v3, :cond_0

    const-string v3, "DateTimeFormatFromSIE"

    const-string v4, "getDateFormatListShortBySIE: get date format list from SIE"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 v12, 0x0

    const/4 v10, 0x0

    const/4 v9, 0x0

    :try_start_0
    const-string v3, "content://customization_settings/SettingTable/application_Settings"

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    sget-boolean v3, Lcom/android/settings/DateTimeFormatFromSIE;->DEBUG_FLAG:Z

    if-eqz v3, :cond_1

    const-string v3, "DateTimeFormatFromSIE"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getDateFormatListShortBySIE: SIE customization uri = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    invoke-virtual {v8, v2}, Landroid/content/ContentResolver;->acquireUnstableContentProviderClient(Landroid/net/Uri;)Landroid/content/ContentProviderClient;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v1

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    :try_start_1
    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentProviderClient;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    if-eqz v9, :cond_2

    invoke-interface {v9}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_2

    const-string v3, "value"

    invoke-interface {v9, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v9, v3}, Landroid/database/Cursor;->getBlob(I)[B
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v10

    :cond_2
    if-eqz v9, :cond_3

    :try_start_2
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    const/4 v9, 0x0

    :cond_3
    if-eqz v1, :cond_4

    invoke-virtual {v1}, Landroid/content/ContentProviderClient;->release()Z

    const/4 v1, 0x0

    :cond_4
    :goto_0
    if-eqz v10, :cond_c

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v17

    const/4 v3, 0x0

    array-length v4, v10

    move-object/from16 v0, v17

    invoke-virtual {v0, v10, v3, v4}, Landroid/os/Parcel;->unmarshall([BII)V

    const/4 v3, 0x0

    move-object/from16 v0, v17

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->setDataPosition(I)V

    new-instance v7, Landroid/os/Bundle;

    invoke-direct {v7}, Landroid/os/Bundle;-><init>()V

    move-object/from16 v0, v17

    invoke-virtual {v7, v0}, Landroid/os/Bundle;->readFromParcel(Landroid/os/Parcel;)V

    const-string v3, "date_format_list_short"

    invoke-virtual {v7, v3}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v14

    if-eqz v14, :cond_b

    invoke-virtual {v14}, Landroid/os/Bundle;->size()I

    move-result v18

    const/4 v15, 0x0

    :goto_1
    move/from16 v0, v18

    if-ge v15, v0, :cond_9

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "plenty_set"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    add-int/lit8 v4, v15, 0x1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v14, v0}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v11

    if-eqz v11, :cond_a

    const/4 v3, 0x6

    new-array v12, v3, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "date_format_short1"

    const-string v5, ""

    invoke-static {v11, v4, v5}, Lcom/android/settings/DateTimeFormatFromSIE;->getStringValue(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v12, v3

    const/4 v3, 0x1

    const-string v4, "date_format_short2"

    const-string v5, ""

    invoke-static {v11, v4, v5}, Lcom/android/settings/DateTimeFormatFromSIE;->getStringValue(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v12, v3

    const/4 v3, 0x2

    const-string v4, "date_format_short3"

    const-string v5, ""

    invoke-static {v11, v4, v5}, Lcom/android/settings/DateTimeFormatFromSIE;->getStringValue(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v12, v3

    const/4 v3, 0x3

    const-string v4, "date_format_short4"

    const-string v5, ""

    invoke-static {v11, v4, v5}, Lcom/android/settings/DateTimeFormatFromSIE;->getStringValue(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v12, v3

    const/4 v3, 0x4

    const-string v4, "date_format_short5"

    const-string v5, ""

    invoke-static {v11, v4, v5}, Lcom/android/settings/DateTimeFormatFromSIE;->getStringValue(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v12, v3

    const/4 v3, 0x5

    const-string v4, "date_format_short6"

    const-string v5, ""

    invoke-static {v11, v4, v5}, Lcom/android/settings/DateTimeFormatFromSIE;->getStringValue(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v12, v3

    const-string v3, "DateTimeFormatFromSIE"

    const-string v4, "Date format list short is read from SIE"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    :cond_5
    :goto_2
    add-int/lit8 v15, v15, 0x1

    goto :goto_1

    :catch_0
    move-exception v13

    :try_start_3
    const-string v3, "DateTimeFormatFromSIE"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getDateFormatListShortBySIE: query failed e = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v13}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-eqz v9, :cond_6

    :try_start_4
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    const/4 v9, 0x0

    :cond_6
    if-eqz v1, :cond_4

    invoke-virtual {v1}, Landroid/content/ContentProviderClient;->release()Z

    const/4 v1, 0x0

    goto/16 :goto_0

    :catchall_0
    move-exception v3

    if-eqz v9, :cond_7

    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    const/4 v9, 0x0

    :cond_7
    if-eqz v1, :cond_8

    invoke-virtual {v1}, Landroid/content/ContentProviderClient;->release()Z

    const/4 v1, 0x0

    :cond_8
    throw v3
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    :catch_1
    move-exception v13

    const-string v3, "DateTimeFormatFromSIE"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getDateFormatListShortBySIE: get date format list failed e = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v13}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_9
    :goto_3
    return-object v12

    :cond_a
    :try_start_5
    sget-boolean v3, Lcom/android/settings/DateTimeFormatFromSIE;->DEBUG_FLAG:Z

    if-eqz v3, :cond_5

    const-string v3, "DateTimeFormatFromSIE"

    const-string v4, "getDateFormatListShortBySIE: no plenty_set attribute"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :cond_b
    sget-boolean v3, Lcom/android/settings/DateTimeFormatFromSIE;->DEBUG_FLAG:Z

    if-eqz v3, :cond_9

    const-string v3, "DateTimeFormatFromSIE"

    const-string v4, "getDateFormatListShortBySIE: no date_format_list_short attribute"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    :cond_c
    const-string v3, "DateTimeFormatFromSIE"

    const-string v4, "Date format list short is empty"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1

    goto :goto_3
.end method

.method private static getDefaultTimeFormatSettingBySIE(Landroid/content/Context;)Ljava/lang/String;
    .locals 14

    sget-boolean v2, Lcom/android/settings/DateTimeFormatFromSIE;->DEBUG_FLAG:Z

    if-eqz v2, :cond_0

    const-string v2, "DateTimeFormatFromSIE"

    const-string v3, "getDefaultTimeFormatSettingBySIE: get default setting from SIE"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 v10, 0x0

    const/4 v9, 0x0

    const/4 v8, 0x0

    :try_start_0
    const-string v2, "content://customization_settings/SettingTable/system_defaultTimeFormatSetting"

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    sget-boolean v2, Lcom/android/settings/DateTimeFormatFromSIE;->DEBUG_FLAG:Z

    if-eqz v2, :cond_1

    const-string v2, "DateTimeFormatFromSIE"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getDefaultTimeFormatSettingBySIE: SIE customization uri = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    invoke-virtual {v7, v1}, Landroid/content/ContentResolver;->acquireUnstableContentProviderClient(Landroid/net/Uri;)Landroid/content/ContentProviderClient;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    :try_start_1
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentProviderClient;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    if-eqz v8, :cond_2

    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_2

    const-string v2, "value"

    invoke-interface {v8, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v8, v2}, Landroid/database/Cursor;->getBlob(I)[B
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v9

    :cond_2
    if-eqz v8, :cond_3

    :try_start_2
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    const/4 v8, 0x0

    :cond_3
    if-eqz v0, :cond_4

    invoke-virtual {v0}, Landroid/content/ContentProviderClient;->release()Z

    const/4 v0, 0x0

    :cond_4
    :goto_0
    if-eqz v9, :cond_9

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v13

    const/4 v2, 0x0

    array-length v3, v9

    invoke-virtual {v13, v9, v2, v3}, Landroid/os/Parcel;->unmarshall([BII)V

    const/4 v2, 0x0

    invoke-virtual {v13, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    new-instance v6, Landroid/os/Bundle;

    invoke-direct {v6}, Landroid/os/Bundle;-><init>()V

    invoke-virtual {v6, v13}, Landroid/os/Bundle;->readFromParcel(Landroid/os/Parcel;)V

    const-string v12, "default"

    invoke-virtual {v6, v12}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    sget-boolean v2, Lcom/android/settings/DateTimeFormatFromSIE;->DEBUG_FLAG:Z

    if-eqz v2, :cond_5

    const-string v2, "DateTimeFormatFromSIE"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getDefaultTimeFormatSettingBySIE: defaultTimeFormat = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    const-string v2, "DateTimeFormatFromSIE"

    const-string v3, "Default time format setting is read from SIE"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    :goto_1
    return-object v10

    :catch_0
    move-exception v11

    :try_start_3
    const-string v2, "DateTimeFormatFromSIE"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getDefaultTimeFormatSettingBySIE: query failed e = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v11}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-eqz v8, :cond_6

    :try_start_4
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    const/4 v8, 0x0

    :cond_6
    if-eqz v0, :cond_4

    invoke-virtual {v0}, Landroid/content/ContentProviderClient;->release()Z

    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v2

    if-eqz v8, :cond_7

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    const/4 v8, 0x0

    :cond_7
    if-eqz v0, :cond_8

    invoke-virtual {v0}, Landroid/content/ContentProviderClient;->release()Z

    const/4 v0, 0x0

    :cond_8
    throw v2
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    :catch_1
    move-exception v11

    const-string v2, "DateTimeFormatFromSIE"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getDefaultTimeFormatSettingBySIE: get default setting failed e = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v11}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_9
    :try_start_5
    const-string v2, "DateTimeFormatFromSIE"

    const-string v3, "Default time format setting is empty"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1

    goto :goto_1
.end method

.method private static getDefaultTimeFormatSettingShortBySIE(Landroid/content/Context;)Ljava/lang/String;
    .locals 14

    sget-boolean v2, Lcom/android/settings/DateTimeFormatFromSIE;->DEBUG_FLAG:Z

    if-eqz v2, :cond_0

    const-string v2, "DateTimeFormatFromSIE"

    const-string v3, "getDefaultTimeFormatSettingShortBySIE: get default setting from SIE"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 v10, 0x0

    const/4 v9, 0x0

    const/4 v8, 0x0

    :try_start_0
    const-string v2, "content://customization_settings/SettingTable/system_defaultTimeFormatSettingShort"

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    sget-boolean v2, Lcom/android/settings/DateTimeFormatFromSIE;->DEBUG_FLAG:Z

    if-eqz v2, :cond_1

    const-string v2, "DateTimeFormatFromSIE"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getDefaultTimeFormatSettingShortBySIE: SIE customization uri = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    invoke-virtual {v7, v1}, Landroid/content/ContentResolver;->acquireUnstableContentProviderClient(Landroid/net/Uri;)Landroid/content/ContentProviderClient;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    :try_start_1
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentProviderClient;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    if-eqz v8, :cond_2

    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_2

    const-string v2, "value"

    invoke-interface {v8, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v8, v2}, Landroid/database/Cursor;->getBlob(I)[B
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v9

    :cond_2
    if-eqz v8, :cond_3

    :try_start_2
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    const/4 v8, 0x0

    :cond_3
    if-eqz v0, :cond_4

    invoke-virtual {v0}, Landroid/content/ContentProviderClient;->release()Z

    const/4 v0, 0x0

    :cond_4
    :goto_0
    if-eqz v9, :cond_9

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v13

    const/4 v2, 0x0

    array-length v3, v9

    invoke-virtual {v13, v9, v2, v3}, Landroid/os/Parcel;->unmarshall([BII)V

    const/4 v2, 0x0

    invoke-virtual {v13, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    new-instance v6, Landroid/os/Bundle;

    invoke-direct {v6}, Landroid/os/Bundle;-><init>()V

    invoke-virtual {v6, v13}, Landroid/os/Bundle;->readFromParcel(Landroid/os/Parcel;)V

    const-string v12, "default"

    invoke-virtual {v6, v12}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    sget-boolean v2, Lcom/android/settings/DateTimeFormatFromSIE;->DEBUG_FLAG:Z

    if-eqz v2, :cond_5

    const-string v2, "DateTimeFormatFromSIE"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getDefaultTimeFormatSettingShortBySIE: defaultTimeFormatShort = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    const-string v2, "DateTimeFormatFromSIE"

    const-string v3, "Default time format setting short is read from SIE"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    :goto_1
    return-object v10

    :catch_0
    move-exception v11

    :try_start_3
    const-string v2, "DateTimeFormatFromSIE"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getDefaultTimeFormatSettingShortBySIE: query failed e = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v11}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-eqz v8, :cond_6

    :try_start_4
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    const/4 v8, 0x0

    :cond_6
    if-eqz v0, :cond_4

    invoke-virtual {v0}, Landroid/content/ContentProviderClient;->release()Z

    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v2

    if-eqz v8, :cond_7

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    const/4 v8, 0x0

    :cond_7
    if-eqz v0, :cond_8

    invoke-virtual {v0}, Landroid/content/ContentProviderClient;->release()Z

    const/4 v0, 0x0

    :cond_8
    throw v2
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    :catch_1
    move-exception v11

    const-string v2, "DateTimeFormatFromSIE"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getDefaultTimeFormatSettingShortBySIE: get default setting failed e = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v11}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_9
    :try_start_5
    const-string v2, "DateTimeFormatFromSIE"

    const-string v3, "Default time format setting short is empty"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1

    goto :goto_1
.end method

.method public static getSIEDateFormats()[Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/android/settings/DateTimeFormatFromSIE;->mSIEDateFormats:[Ljava/lang/String;

    return-object v0
.end method

.method public static getSIEDateFormatsShort()[Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/android/settings/DateTimeFormatFromSIE;->mSIEDateFormatsShort:[Ljava/lang/String;

    return-object v0
.end method

.method public static getSIEDefaultTimeFormatSetting()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/android/settings/DateTimeFormatFromSIE;->mSIEDefaultTimeFormatSetting:Ljava/lang/String;

    return-object v0
.end method

.method public static getSIEDefaultTimeFormatSettingShort()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/android/settings/DateTimeFormatFromSIE;->mSIEDefaultTimeFormatSettingShort:Ljava/lang/String;

    return-object v0
.end method

.method private static getStringValue(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    invoke-virtual {p0, p1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    :goto_0
    return-object p2

    :cond_0
    move-object p2, v0

    goto :goto_0
.end method

.method public static initSIEDateFormat(Landroid/content/Context;)V
    .locals 4

    invoke-static {p0}, Lcom/android/settings/DateTimeFormatFromSIE;->getDateFormatListBySIE(Landroid/content/Context;)[Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/android/settings/DateTimeFormatFromSIE;->mSIEDateFormats:[Ljava/lang/String;

    if-eqz v1, :cond_2

    const/4 v0, 0x0

    :goto_0
    sget-object v1, Lcom/android/settings/DateTimeFormatFromSIE;->mSIEDateFormats:[Ljava/lang/String;

    array-length v1, v1

    if-ge v0, v1, :cond_0

    const-string v1, "CUST_DATE_FORMAT"

    sget-object v2, Lcom/android/settings/DateTimeFormatFromSIE;->mSIEDateFormats:[Ljava/lang/String;

    aget-object v2, v2, v0

    invoke-static {v1, v2}, Lcom/android/settings/DateTimeFormatFromSIE;->SIELogMsg(Ljava/lang/String;Ljava/lang/String;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_1
    sget-object v1, Lcom/android/settings/DateTimeFormatFromSIE;->mSIEDateFormats:[Ljava/lang/String;

    array-length v1, v1

    if-ge v0, v1, :cond_2

    sget-boolean v1, Lcom/android/settings/DateTimeFormatFromSIE;->DEBUG_FLAG:Z

    if-eqz v1, :cond_1

    const-string v1, "DateTimeFormatFromSIE"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "initSIEDateFormat: mSIEDateFormats["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "] = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/android/settings/DateTimeFormatFromSIE;->mSIEDateFormats:[Ljava/lang/String;

    aget-object v3, v3, v0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    invoke-static {p0}, Lcom/android/settings/DateTimeFormatFromSIE;->getDateFormatListShortBySIE(Landroid/content/Context;)[Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/android/settings/DateTimeFormatFromSIE;->mSIEDateFormatsShort:[Ljava/lang/String;

    if-eqz v1, :cond_5

    const/4 v0, 0x0

    :goto_2
    sget-object v1, Lcom/android/settings/DateTimeFormatFromSIE;->mSIEDateFormatsShort:[Ljava/lang/String;

    array-length v1, v1

    if-ge v0, v1, :cond_3

    const-string v1, "CUST_DATE_FORMAT_SHORT"

    sget-object v2, Lcom/android/settings/DateTimeFormatFromSIE;->mSIEDateFormatsShort:[Ljava/lang/String;

    aget-object v2, v2, v0

    invoke-static {v1, v2}, Lcom/android/settings/DateTimeFormatFromSIE;->SIELogMsg(Ljava/lang/String;Ljava/lang/String;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_3
    const/4 v0, 0x0

    :goto_3
    sget-object v1, Lcom/android/settings/DateTimeFormatFromSIE;->mSIEDateFormatsShort:[Ljava/lang/String;

    array-length v1, v1

    if-ge v0, v1, :cond_5

    sget-boolean v1, Lcom/android/settings/DateTimeFormatFromSIE;->DEBUG_FLAG:Z

    if-eqz v1, :cond_4

    const-string v1, "DateTimeFormatFromSIE"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "initSIEDateFormat: mSIEDateFormatsShort["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "] = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/android/settings/DateTimeFormatFromSIE;->mSIEDateFormatsShort:[Ljava/lang/String;

    aget-object v3, v3, v0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_5
    invoke-static {p0}, Lcom/android/settings/DateTimeFormatFromSIE;->getDefaultTimeFormatSettingBySIE(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/android/settings/DateTimeFormatFromSIE;->mSIEDefaultTimeFormatSetting:Ljava/lang/String;

    if-eqz v1, :cond_6

    sget-boolean v1, Lcom/android/settings/DateTimeFormatFromSIE;->DEBUG_FLAG:Z

    if-eqz v1, :cond_6

    const-string v1, "DateTimeFormatFromSIE"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "initSIEDateFormat: mSIEDefaultTimeFormatSetting = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/android/settings/DateTimeFormatFromSIE;->mSIEDefaultTimeFormatSetting:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6
    invoke-static {p0}, Lcom/android/settings/DateTimeFormatFromSIE;->getDefaultTimeFormatSettingShortBySIE(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/android/settings/DateTimeFormatFromSIE;->mSIEDefaultTimeFormatSettingShort:Ljava/lang/String;

    if-eqz v1, :cond_7

    sget-boolean v1, Lcom/android/settings/DateTimeFormatFromSIE;->DEBUG_FLAG:Z

    if-eqz v1, :cond_7

    const-string v1, "DateTimeFormatFromSIE"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "initSIEDateFormat: mSIEDefaultTimeFormatSettingShort = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/android/settings/DateTimeFormatFromSIE;->mSIEDefaultTimeFormatSettingShort:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_7
    sget-object v1, Lcom/android/settings/DateTimeFormatFromSIE;->mSIEDateFormats:[Ljava/lang/String;

    if-eqz v1, :cond_9

    sget-object v1, Lcom/android/settings/DateTimeFormatFromSIE;->mSIEDateFormatsShort:[Ljava/lang/String;

    if-eqz v1, :cond_9

    sget-object v1, Lcom/android/settings/DateTimeFormatFromSIE;->mSIEDefaultTimeFormatSetting:Ljava/lang/String;

    if-eqz v1, :cond_9

    sget-object v1, Lcom/android/settings/DateTimeFormatFromSIE;->mSIEDefaultTimeFormatSettingShort:Ljava/lang/String;

    if-eqz v1, :cond_9

    const/4 v1, 0x1

    :goto_4
    sput-boolean v1, Lcom/android/settings/DateTimeFormatFromSIE;->mIsUseSIEDateFormatList:Z

    sget-boolean v1, Lcom/android/settings/DateTimeFormatFromSIE;->DEBUG_FLAG:Z

    if-eqz v1, :cond_8

    const-string v1, "DateTimeFormatFromSIE"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "initSIEDateFormat: mIsUseSIEDateFormatList = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-boolean v3, Lcom/android/settings/DateTimeFormatFromSIE;->mIsUseSIEDateFormatList:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_8
    return-void

    :cond_9
    const/4 v1, 0x0

    goto :goto_4
.end method

.method public static isUseSIEDateFormatList()Z
    .locals 1

    sget-boolean v0, Lcom/android/settings/DateTimeFormatFromSIE;->mIsUseSIEDateFormatList:Z

    return v0
.end method
