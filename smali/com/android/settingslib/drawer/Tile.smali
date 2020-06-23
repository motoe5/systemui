.class public Lcom/android/settingslib/drawer/Tile;
.super Ljava/lang/Object;
.source "Tile.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settingslib/drawer/Tile$1;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/android/settingslib/drawer/Tile;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public category:Ljava/lang/String;

.field public extras:Landroid/os/Bundle;

.field public icon:Landroid/graphics/drawable/Icon;

.field public intent:Landroid/content/Intent;

.field public key:Ljava/lang/String;

.field public metaData:Landroid/os/Bundle;

.field public priority:I

.field public summary:Ljava/lang/CharSequence;

.field public title:Ljava/lang/CharSequence;

.field public userHandle:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/os/UserHandle;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 148
    new-instance v0, Lcom/android/settingslib/drawer/Tile$1;

    invoke-direct {v0}, Lcom/android/settingslib/drawer/Tile$1;-><init>()V

    sput-object v0, Lcom/android/settingslib/drawer/Tile;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 32
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 87
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settingslib/drawer/Tile;->userHandle:Ljava/util/ArrayList;

    .line 89
    return-void
.end method

.method constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 144
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settingslib/drawer/Tile;->userHandle:Ljava/util/ArrayList;

    .line 145
    invoke-virtual {p0, p1}, Lcom/android/settingslib/drawer/Tile;->readFromParcel(Landroid/os/Parcel;)V

    .line 146
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 93
    const/4 v0, 0x0

    return v0
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .locals 4
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 125
    sget-object v2, Landroid/text/TextUtils;->CHAR_SEQUENCE_CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v2, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/CharSequence;

    iput-object v2, p0, Lcom/android/settingslib/drawer/Tile;->title:Ljava/lang/CharSequence;

    .line 126
    sget-object v2, Landroid/text/TextUtils;->CHAR_SEQUENCE_CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v2, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/CharSequence;

    iput-object v2, p0, Lcom/android/settingslib/drawer/Tile;->summary:Ljava/lang/CharSequence;

    .line 127
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v2

    if-eqz v2, :cond_0

    .line 128
    sget-object v2, Landroid/graphics/drawable/Icon;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v2, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/drawable/Icon;

    iput-object v2, p0, Lcom/android/settingslib/drawer/Tile;->icon:Landroid/graphics/drawable/Icon;

    .line 130
    :cond_0
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v2

    if-eqz v2, :cond_1

    .line 131
    sget-object v2, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v2, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/Intent;

    iput-object v2, p0, Lcom/android/settingslib/drawer/Tile;->intent:Landroid/content/Intent;

    .line 133
    :cond_1
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 134
    .local v0, "N":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_2

    .line 135
    iget-object v3, p0, Lcom/android/settingslib/drawer/Tile;->userHandle:Ljava/util/ArrayList;

    sget-object v2, Landroid/os/UserHandle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v2, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/UserHandle;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 134
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 137
    :cond_2
    invoke-virtual {p1}, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settingslib/drawer/Tile;->extras:Landroid/os/Bundle;

    .line 138
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settingslib/drawer/Tile;->category:Ljava/lang/String;

    .line 139
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Lcom/android/settingslib/drawer/Tile;->priority:I

    .line 140
    invoke-virtual {p1}, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settingslib/drawer/Tile;->metaData:Landroid/os/Bundle;

    .line 141
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settingslib/drawer/Tile;->key:Ljava/lang/String;

    .line 142
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 5
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 98
    iget-object v2, p0, Lcom/android/settingslib/drawer/Tile;->title:Ljava/lang/CharSequence;

    invoke-static {v2, p1, p2}, Landroid/text/TextUtils;->writeToParcel(Ljava/lang/CharSequence;Landroid/os/Parcel;I)V

    .line 99
    iget-object v2, p0, Lcom/android/settingslib/drawer/Tile;->summary:Ljava/lang/CharSequence;

    invoke-static {v2, p1, p2}, Landroid/text/TextUtils;->writeToParcel(Ljava/lang/CharSequence;Landroid/os/Parcel;I)V

    .line 100
    iget-object v2, p0, Lcom/android/settingslib/drawer/Tile;->icon:Landroid/graphics/drawable/Icon;

    if-eqz v2, :cond_0

    .line 101
    invoke-virtual {p1, v4}, Landroid/os/Parcel;->writeByte(B)V

    .line 102
    iget-object v2, p0, Lcom/android/settingslib/drawer/Tile;->icon:Landroid/graphics/drawable/Icon;

    invoke-virtual {v2, p1, p2}, Landroid/graphics/drawable/Icon;->writeToParcel(Landroid/os/Parcel;I)V

    .line 106
    :goto_0
    iget-object v2, p0, Lcom/android/settingslib/drawer/Tile;->intent:Landroid/content/Intent;

    if-eqz v2, :cond_1

    .line 107
    invoke-virtual {p1, v4}, Landroid/os/Parcel;->writeByte(B)V

    .line 108
    iget-object v2, p0, Lcom/android/settingslib/drawer/Tile;->intent:Landroid/content/Intent;

    invoke-virtual {v2, p1, p2}, Landroid/content/Intent;->writeToParcel(Landroid/os/Parcel;I)V

    .line 112
    :goto_1
    iget-object v2, p0, Lcom/android/settingslib/drawer/Tile;->userHandle:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 113
    .local v0, "N":I
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 114
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_2
    if-ge v1, v0, :cond_2

    .line 115
    iget-object v2, p0, Lcom/android/settingslib/drawer/Tile;->userHandle:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/UserHandle;

    invoke-virtual {v2, p1, p2}, Landroid/os/UserHandle;->writeToParcel(Landroid/os/Parcel;I)V

    .line 114
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 104
    .end local v0    # "N":I
    .end local v1    # "i":I
    :cond_0
    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeByte(B)V

    goto :goto_0

    .line 110
    :cond_1
    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeByte(B)V

    goto :goto_1

    .line 117
    .restart local v0    # "N":I
    .restart local v1    # "i":I
    :cond_2
    iget-object v2, p0, Lcom/android/settingslib/drawer/Tile;->extras:Landroid/os/Bundle;

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    .line 118
    iget-object v2, p0, Lcom/android/settingslib/drawer/Tile;->category:Ljava/lang/String;

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 119
    iget v2, p0, Lcom/android/settingslib/drawer/Tile;->priority:I

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 120
    iget-object v2, p0, Lcom/android/settingslib/drawer/Tile;->metaData:Landroid/os/Bundle;

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    .line 121
    iget-object v2, p0, Lcom/android/settingslib/drawer/Tile;->key:Ljava/lang/String;

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 122
    return-void
.end method
