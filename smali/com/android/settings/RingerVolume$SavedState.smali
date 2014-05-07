.class Lcom/android/settings/RingerVolume$SavedState;
.super Lcom/android/settings/HtcVolumeDialogBase$BaseSavedState;
.source "RingerVolume.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/RingerVolume;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SavedState"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/RingerVolume$SavedState$initsatae;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/android/settings/RingerVolume$SavedState;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public RingerMode:I

.field public mState:Lcom/android/settings/RingerVolume$SavedState$initsatae;

.field mVolumeStore:[Lcom/android/settings/HtcVolumeDialog$VolumeStore;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/settings/RingerVolume$SavedState$1;

    invoke-direct {v0}, Lcom/android/settings/RingerVolume$SavedState$1;-><init>()V

    sput-object v0, Lcom/android/settings/RingerVolume$SavedState;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 3

    invoke-direct {p0, p1}, Lcom/android/settings/HtcVolumeDialogBase$BaseSavedState;-><init>(Landroid/os/Parcel;)V

    invoke-static {}, Lcom/android/settings/RingerVolume;->access$300()[I

    move-result-object v1

    array-length v1, v1

    new-array v1, v1, [Lcom/android/settings/HtcVolumeDialog$VolumeStore;

    iput-object v1, p0, Lcom/android/settings/RingerVolume$SavedState;->mVolumeStore:[Lcom/android/settings/HtcVolumeDialog$VolumeStore;

    const/4 v0, 0x0

    :goto_0
    invoke-static {}, Lcom/android/settings/RingerVolume;->access$300()[I

    move-result-object v1

    array-length v1, v1

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lcom/android/settings/RingerVolume$SavedState;->mVolumeStore:[Lcom/android/settings/HtcVolumeDialog$VolumeStore;

    new-instance v2, Lcom/android/settings/HtcVolumeDialog$VolumeStore;

    invoke-direct {v2}, Lcom/android/settings/HtcVolumeDialog$VolumeStore;-><init>()V

    aput-object v2, v1, v0

    iget-object v1, p0, Lcom/android/settings/RingerVolume$SavedState;->mVolumeStore:[Lcom/android/settings/HtcVolumeDialog$VolumeStore;

    aget-object v1, v1, v0

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, v1, Lcom/android/settings/HtcVolumeDialog$VolumeStore;->volume:I

    iget-object v1, p0, Lcom/android/settings/RingerVolume$SavedState;->mVolumeStore:[Lcom/android/settings/HtcVolumeDialog$VolumeStore;

    aget-object v1, v1, v0

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, v1, Lcom/android/settings/HtcVolumeDialog$VolumeStore;->originalVolume:I

    sget-object v1, Lcom/android/settings/RingerVolume$SavedState$initsatae;->initsatae_notinit:Lcom/android/settings/RingerVolume$SavedState$initsatae;

    iput-object v1, p0, Lcom/android/settings/RingerVolume$SavedState;->mState:Lcom/android/settings/RingerVolume$SavedState$initsatae;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcelable;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/settings/HtcVolumeDialogBase$BaseSavedState;-><init>(Landroid/os/Parcelable;)V

    return-void
.end method


# virtual methods
.method getVolumeStore(I)[Lcom/android/settings/HtcVolumeDialog$VolumeStore;
    .locals 3

    iget-object v1, p0, Lcom/android/settings/RingerVolume$SavedState;->mVolumeStore:[Lcom/android/settings/HtcVolumeDialog$VolumeStore;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/settings/RingerVolume$SavedState;->mVolumeStore:[Lcom/android/settings/HtcVolumeDialog$VolumeStore;

    array-length v1, v1

    if-eq v1, p1, :cond_1

    :cond_0
    new-array v1, p1, [Lcom/android/settings/HtcVolumeDialog$VolumeStore;

    iput-object v1, p0, Lcom/android/settings/RingerVolume$SavedState;->mVolumeStore:[Lcom/android/settings/HtcVolumeDialog$VolumeStore;

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p1, :cond_1

    iget-object v1, p0, Lcom/android/settings/RingerVolume$SavedState;->mVolumeStore:[Lcom/android/settings/HtcVolumeDialog$VolumeStore;

    new-instance v2, Lcom/android/settings/HtcVolumeDialog$VolumeStore;

    invoke-direct {v2}, Lcom/android/settings/HtcVolumeDialog$VolumeStore;-><init>()V

    aput-object v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/android/settings/RingerVolume$SavedState;->mVolumeStore:[Lcom/android/settings/HtcVolumeDialog$VolumeStore;

    return-object v1
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    invoke-super {p0, p1, p2}, Landroid/view/AbsSavedState;->writeToParcel(Landroid/os/Parcel;I)V

    const/4 v0, 0x0

    :goto_0
    invoke-static {}, Lcom/android/settings/RingerVolume;->access$300()[I

    move-result-object v1

    array-length v1, v1

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lcom/android/settings/RingerVolume$SavedState;->mVolumeStore:[Lcom/android/settings/HtcVolumeDialog$VolumeStore;

    aget-object v1, v1, v0

    iget v1, v1, Lcom/android/settings/HtcVolumeDialog$VolumeStore;->volume:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v1, p0, Lcom/android/settings/RingerVolume$SavedState;->mVolumeStore:[Lcom/android/settings/HtcVolumeDialog$VolumeStore;

    aget-object v1, v1, v0

    iget v1, v1, Lcom/android/settings/HtcVolumeDialog$VolumeStore;->originalVolume:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method
