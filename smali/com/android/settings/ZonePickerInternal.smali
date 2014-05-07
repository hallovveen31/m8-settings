.class public Lcom/android/settings/ZonePickerInternal;
.super Lcom/android/settings/ZonePicker;
.source "ZonePickerInternal.java"


# static fields
#the value of this static final field might be set in the static constructor
.field private static final DEBUG:Z = false

.field private static final KEY_DISPLAYNAME:Ljava/lang/String; = "name"

.field private static final KEY_ID:Ljava/lang/String; = "id"

.field private static final TAG:Ljava/lang/String; = "ZonePickerInternal"


# instance fields
.field private mCallback:Lcom/android/settings/ZonePicker$ZoneIdAndNameListener;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-boolean v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    sput-boolean v0, Lcom/android/settings/ZonePickerInternal;->DEBUG:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/ZonePicker;-><init>()V

    return-void
.end method


# virtual methods
.method public onListItemClick(Lcom/htc/widget/HtcListView;Landroid/view/View;IJ)V
    .locals 7

    invoke-virtual {p1, p3}, Landroid/widget/AdapterView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map;

    const-string v4, "id"

    invoke-interface {v2, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    const-string v4, "name"

    invoke-interface {v2, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Ljava/util/TimeZone;->getDisplayName()Ljava/lang/String;

    move-result-object v1

    :cond_0
    :goto_0
    iget-object v4, p0, Lcom/android/settings/ZonePickerInternal;->mCallback:Lcom/android/settings/ZonePicker$ZoneIdAndNameListener;

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/android/settings/ZonePickerInternal;->mCallback:Lcom/android/settings/ZonePicker$ZoneIdAndNameListener;

    invoke-interface {v4, v3, v1}, Lcom/android/settings/ZonePicker$ZoneIdAndNameListener;->onZoneIdAndNameReady(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    sget-boolean v4, Lcom/android/settings/ZonePickerInternal;->DEBUG:Z

    if-eqz v4, :cond_2

    const-string v4, "ZonePickerInternal"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "ZonePickerInternal tzId==>"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " name==>"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    return-void

    :cond_3
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-static {v3}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/TimeZone;->getDisplayName()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public setZoneSelectionListener(Lcom/android/settings/ZonePicker$ZoneIdAndNameListener;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/ZonePickerInternal;->mCallback:Lcom/android/settings/ZonePicker$ZoneIdAndNameListener;

    return-void
.end method
