.class public final Lcom/android/settings/bluetooth/OutOfRangePreference;
.super Lcom/htc/preference/HtcPreference;
.source "OutOfRangePreference.java"

# interfaces
.implements Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;


# static fields
.field private static final DEBUG:Z = false

.field private static final TAG:Ljava/lang/String; = "OutOfRangePreference"

.field private static final isChinaSku:Z


# instance fields
.field private mAddress:Ljava/lang/String;

.field private mCachedDevice:Lcom/android/settings/bluetooth/CachedBluetoothDevice;

.field private final mDeviceAddress:Ljava/lang/String;

.field private mLocation:Ljava/lang/String;

.field private mTime:J

.field private mUIHandler:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    invoke-static {}, Lcom/android/settings/framework/flag/feature/HtcFeatureFlags;->isChinaRegion()Z

    move-result v0

    sput-boolean v0, Lcom/android/settings/bluetooth/OutOfRangePreference;->isChinaSku:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/settings/bluetooth/CachedBluetoothDevice;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/htc/preference/HtcPreference;-><init>(Landroid/content/Context;)V

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/settings/bluetooth/OutOfRangePreference;->mUIHandler:Landroid/os/Handler;

    iput-object p2, p0, Lcom/android/settings/bluetooth/OutOfRangePreference;->mCachedDevice:Lcom/android/settings/bluetooth/CachedBluetoothDevice;

    iget-object v0, p0, Lcom/android/settings/bluetooth/OutOfRangePreference;->mCachedDevice:Lcom/android/settings/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v0}, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/bluetooth/OutOfRangePreference;->mDeviceAddress:Ljava/lang/String;

    iget-object v0, p0, Lcom/android/settings/bluetooth/OutOfRangePreference;->mDeviceAddress:Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/android/settings/bluetooth/HtcTagPreference;->getOutOfRangeAddress(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/bluetooth/OutOfRangePreference;->mAddress:Ljava/lang/String;

    const v0, 0x7f040072

    invoke-virtual {p0, v0}, Lcom/htc/preference/HtcPreference;->setLayoutResource(I)V

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/bluetooth/OutOfRangePreference;DDI)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct/range {p0 .. p5}, Lcom/android/settings/bluetooth/OutOfRangePreference;->getFromLocation(DDI)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/settings/bluetooth/OutOfRangePreference;Landroid/content/Context;Landroid/location/Address;)Ljava/lang/String;
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/android/settings/bluetooth/OutOfRangePreference;->composeAddressLine(Landroid/content/Context;Landroid/location/Address;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/settings/bluetooth/OutOfRangePreference;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/bluetooth/OutOfRangePreference;->mAddress:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$202(Lcom/android/settings/bluetooth/OutOfRangePreference;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/android/settings/bluetooth/OutOfRangePreference;->mAddress:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$300(Lcom/android/settings/bluetooth/OutOfRangePreference;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/bluetooth/OutOfRangePreference;->mDeviceAddress:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/settings/bluetooth/OutOfRangePreference;)V
    .locals 0

    invoke-virtual {p0}, Lcom/htc/preference/HtcPreference;->notifyChanged()V

    return-void
.end method

.method private composeAddressLine(Landroid/content/Context;Landroid/location/Address;)Ljava/lang/String;
    .locals 5

    invoke-virtual {p2}, Landroid/location/Address;->getMaxAddressLineIndex()I

    move-result v2

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const/4 v1, 0x0

    :goto_0
    if-gt v1, v2, :cond_2

    if-lez v1, :cond_1

    invoke-static {p1}, Lcom/android/settings/bluetooth/LocationAgent;->isGoogleMapsSharedLibraryExist(Landroid/content/Context;)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {p2}, Landroid/location/Address;->getLocale()Ljava/util/Locale;

    move-result-object v3

    sget-object v4, Ljava/util/Locale;->CHINA:Ljava/util/Locale;

    if-ne v3, v4, :cond_0

    invoke-virtual {p2}, Landroid/location/Address;->getCountryCode()Ljava/lang/String;

    move-result-object v3

    const-string v4, "CN"

    invoke-virtual {v3, v4}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    :cond_0
    const-string v3, ", "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_1
    invoke-virtual {p2, v1}, Landroid/location/Address;->getAddressLine(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method private getFromLocation(DDI)Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(DDI)",
            "Ljava/util/List",
            "<",
            "Landroid/location/Address;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/htc/preference/HtcPreference;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6}, Lcom/android/settings/bluetooth/LocationAgent;->isGoogleMapsSharedLibraryExist(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v0, Landroid/location/Geocoder;

    invoke-direct {v0, v6}, Landroid/location/Geocoder;-><init>(Landroid/content/Context;)V

    if-eqz v0, :cond_1

    move-wide v1, p1

    move-wide v3, p3

    move v5, p5

    invoke-virtual/range {v0 .. v5}, Landroid/location/Geocoder;->getFromLocation(DDI)Ljava/util/List;

    move-result-object v1

    :goto_0
    return-object v1

    :cond_0
    new-instance v0, Lcom/amap/mapapi/geocoder/Geocoder;

    invoke-direct {v0, v6}, Lcom/amap/mapapi/geocoder/Geocoder;-><init>(Landroid/content/Context;)V

    if-eqz v0, :cond_1

    move-wide v1, p1

    move-wide v3, p3

    move v5, p5

    :try_start_0
    invoke-virtual/range {v0 .. v5}, Lcom/amap/mapapi/geocoder/Geocoder;->getFromLocation(DDI)Ljava/util/List;
    :try_end_0
    .catch Lcom/amap/mapapi/core/AMapException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    goto :goto_0

    :catch_0
    move-exception v7

    invoke-virtual {v7}, Ljava/lang/Throwable;->printStackTrace()V

    new-instance v1, Ljava/io/IOException;

    invoke-direct {v1}, Ljava/io/IOException;-><init>()V

    throw v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method


# virtual methods
.method public fetchAddress(Ljava/lang/String;)V
    .locals 3

    if-eqz p1, :cond_0

    new-instance v0, Lcom/android/settings/bluetooth/OutOfRangePreference$1;

    invoke-direct {v0, p0, p1}, Lcom/android/settings/bluetooth/OutOfRangePreference$1;-><init>(Lcom/android/settings/bluetooth/OutOfRangePreference;Ljava/lang/String;)V

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-virtual {v0, v1}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    :cond_0
    return-void
.end method

.method protected onBindView(Landroid/view/View;)V
    .locals 12

    const/4 v11, 0x0

    const/4 v10, 0x1

    const v6, 0x7f09001e

    invoke-virtual {p1, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/htc/widget/HtcListItem2LineText;

    const v6, 0x7f0900db

    invoke-virtual {p1, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/htc/widget/HtcListItem2LineStamp;

    iget-object v6, p0, Lcom/android/settings/bluetooth/OutOfRangePreference;->mLocation:Ljava/lang/String;

    if-nez v6, :cond_2

    invoke-virtual {p0, v11}, Lcom/htc/preference/HtcPreference;->setEnabled(Z)V

    invoke-virtual {p1, v11}, Landroid/view/View;->setEnabled(Z)V

    iget-object v6, p0, Lcom/android/settings/bluetooth/OutOfRangePreference;->mCachedDevice:Lcom/android/settings/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v6}, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->isConnected()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-virtual {p0}, Lcom/htc/preference/HtcPreference;->getContext()Landroid/content/Context;

    move-result-object v6

    const v7, 0x7f0c0ab6

    new-array v8, v10, [Ljava/lang/Object;

    iget-object v9, p0, Lcom/android/settings/bluetooth/OutOfRangePreference;->mCachedDevice:Lcom/android/settings/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v9}, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v8, v11

    invoke-virtual {v6, v7, v8}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    :goto_0
    invoke-virtual {v2, v5}, Lcom/htc/widget/HtcListItem2LineText;->setPrimaryText(Ljava/lang/String;)V

    const/16 v6, 0x8

    invoke-virtual {v2, v6}, Lcom/htc/widget/HtcListItem2LineText;->setSecondaryTextVisibility(I)V

    :cond_0
    :goto_1
    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/htc/preference/HtcPreference;->getContext()Landroid/content/Context;

    move-result-object v6

    const v7, 0x7f0c0ab9

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    goto :goto_0

    :cond_2
    invoke-virtual {p0, v10}, Lcom/htc/preference/HtcPreference;->setEnabled(Z)V

    invoke-virtual {p1, v10}, Landroid/view/View;->setEnabled(Z)V

    const v6, 0x7f0c0ab7

    invoke-virtual {v2, v6}, Lcom/htc/widget/HtcListItem2LineText;->setPrimaryText(I)V

    iget-wide v6, p0, Lcom/android/settings/bluetooth/OutOfRangePreference;->mTime:J

    const-wide/16 v8, 0x0

    cmp-long v6, v6, v8

    if-eqz v6, :cond_3

    invoke-virtual {p0}, Lcom/htc/preference/HtcPreference;->getContext()Landroid/content/Context;

    move-result-object v6

    iget-wide v7, p0, Lcom/android/settings/bluetooth/OutOfRangePreference;->mTime:J

    const/16 v9, 0x10

    invoke-static {v6, v7, v8, v9}, Landroid/text/format/DateUtils;->formatDateTime(Landroid/content/Context;JI)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/htc/preference/HtcPreference;->getContext()Landroid/content/Context;

    move-result-object v6

    iget-wide v7, p0, Lcom/android/settings/bluetooth/OutOfRangePreference;->mTime:J

    invoke-static {v6, v7, v8, v10}, Landroid/text/format/DateUtils;->formatDateTime(Landroid/content/Context;JI)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v1}, Lcom/htc/widget/HtcListItem2LineStamp;->setPrimaryText(Ljava/lang/String;)V

    invoke-virtual {v3, v4}, Lcom/htc/widget/HtcListItem2LineStamp;->setSecondaryText(Ljava/lang/String;)V

    :cond_3
    iget-object v6, p0, Lcom/android/settings/bluetooth/OutOfRangePreference;->mAddress:Ljava/lang/String;

    if-eqz v6, :cond_4

    iget-object v6, p0, Lcom/android/settings/bluetooth/OutOfRangePreference;->mAddress:Ljava/lang/String;

    invoke-virtual {v2, v6}, Lcom/htc/widget/HtcListItem2LineText;->setSecondaryText(Ljava/lang/String;)V

    goto :goto_1

    :cond_4
    sget-boolean v6, Lcom/android/settings/bluetooth/OutOfRangePreference;->isChinaSku:Z

    if-nez v6, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "("

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/settings/bluetooth/OutOfRangePreference;->mLocation:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ")"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Lcom/htc/widget/HtcListItem2LineText;->setSecondaryText(Ljava/lang/String;)V

    goto :goto_1
.end method

.method public onClick()V
    .locals 6

    :try_start_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "geo:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/settings/bluetooth/OutOfRangePreference;->mLocation:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    new-instance v1, Landroid/content/Intent;

    const-string v3, "android.intent.action.VIEW"

    invoke-direct {v1, v3, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {p0}, Lcom/htc/preference/HtcPreference;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v3, "OutOfRangePreference"

    const-string v4, "can not view location!"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/htc/preference/HtcPreference;->getContext()Landroid/content/Context;

    move-result-object v3

    const-string v4, "Fail to show on map!!"

    const/4 v5, 0x0

    invoke-static {v3, v4, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method

.method public onSharedPreferenceChanged(Landroid/content/SharedPreferences;Ljava/lang/String;)V
    .locals 3

    const-string v2, "_"

    invoke-virtual {p2, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    if-lez v1, :cond_0

    const/4 v2, 0x0

    invoke-virtual {p2, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/android/settings/bluetooth/OutOfRangePreference;->mDeviceAddress:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Lcom/android/settings/bluetooth/OutOfRangePreference;->refresh()V

    :cond_0
    return-void
.end method

.method public pause()V
    .locals 1

    invoke-virtual {p0}, Lcom/htc/preference/HtcPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p0}, Lcom/android/settings/bluetooth/HtcTagPreference;->unregisterOnSharedPreferenceChangeListener(Landroid/content/Context;Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    return-void
.end method

.method public refresh()V
    .locals 2

    invoke-virtual {p0}, Lcom/htc/preference/HtcPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/bluetooth/OutOfRangePreference;->mDeviceAddress:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/android/settings/bluetooth/HtcTagPreference;->getOutOfRangeTime(Landroid/content/Context;Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/settings/bluetooth/OutOfRangePreference;->mTime:J

    invoke-virtual {p0}, Lcom/htc/preference/HtcPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/bluetooth/OutOfRangePreference;->mDeviceAddress:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/android/settings/bluetooth/HtcTagPreference;->getOutOfRangeLocation(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/bluetooth/OutOfRangePreference;->mLocation:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/htc/preference/HtcPreference;->notifyChanged()V

    iget-object v0, p0, Lcom/android/settings/bluetooth/OutOfRangePreference;->mAddress:Ljava/lang/String;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/bluetooth/OutOfRangePreference;->mLocation:Ljava/lang/String;

    if-eqz v0, :cond_0

    invoke-static {}, Landroid/location/Geocoder;->isPresent()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/bluetooth/OutOfRangePreference;->mLocation:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/android/settings/bluetooth/OutOfRangePreference;->fetchAddress(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public resume()V
    .locals 1

    invoke-virtual {p0}, Lcom/htc/preference/HtcPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p0}, Lcom/android/settings/bluetooth/HtcTagPreference;->registerOnSharedPreferenceChangeListener(Landroid/content/Context;Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    return-void
.end method
