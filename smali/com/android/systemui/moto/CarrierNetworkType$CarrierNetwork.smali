.class Lcom/android/systemui/moto/CarrierNetworkType$CarrierNetwork;
.super Ljava/lang/Object;
.source "CarrierNetworkType.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/moto/CarrierNetworkType;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "CarrierNetwork"
.end annotation


# static fields
.field static final GENERIC:Lcom/android/systemui/moto/CarrierNetworkType$CarrierNetwork;


# instance fields
.field private cdma_1x:Ljava/lang/String;

.field private e:Ljava/lang/String;

.field private evdo:Ljava/lang/String;

.field private g:Ljava/lang/String;

.field private h:Ljava/lang/String;

.field private home:Ljava/lang/String;

.field private hspap:Ljava/lang/String;

.field private lte:Ljava/lang/String;

.field private lte_ca:Ljava/lang/String;

.field private name:Ljava/lang/String;

.field private off:Ljava/lang/String;

.field private td_scdma:Ljava/lang/String;

.field private umts:Ljava/lang/String;


# direct methods
.method static synthetic -get0(Lcom/android/systemui/moto/CarrierNetworkType$CarrierNetwork;)Ljava/lang/String;
    .locals 1
    .param p0, "-this"    # Lcom/android/systemui/moto/CarrierNetworkType$CarrierNetwork;

    .prologue
    iget-object v0, p0, Lcom/android/systemui/moto/CarrierNetworkType$CarrierNetwork;->name:Ljava/lang/String;

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 14

    .prologue
    .line 105
    new-instance v0, Lcom/android/systemui/moto/CarrierNetworkType$CarrierNetwork;

    const-string/jumbo v1, "generic"

    const-string/jumbo v2, "both"

    const-string/jumbo v3, "OFF"

    const-string/jumbo v4, "G_W"

    .line 106
    const-string/jumbo v5, "E_W"

    const-string/jumbo v6, "3G_W"

    const-string/jumbo v7, "3G_W"

    const-string/jumbo v8, "3G_W"

    const-string/jumbo v9, "LTE_W"

    const-string/jumbo v10, "1X_W"

    const-string/jumbo v11, "3G_W"

    const-string/jumbo v12, "3G_W"

    const-string/jumbo v13, "LTE+_W"

    .line 105
    invoke-direct/range {v0 .. v13}, Lcom/android/systemui/moto/CarrierNetworkType$CarrierNetwork;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/android/systemui/moto/CarrierNetworkType$CarrierNetwork;->GENERIC:Lcom/android/systemui/moto/CarrierNetworkType$CarrierNetwork;

    .line 104
    return-void
.end method

.method public constructor <init>(Landroid/content/res/TypedArray;)V
    .locals 14
    .param p1, "typedArray"    # Landroid/content/res/TypedArray;

    .prologue
    .line 197
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 198
    new-instance v0, Lcom/android/systemui/moto/CarrierNetworkType$CarrierNetwork;

    .line 199
    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x6

    invoke-virtual {p1, v2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "OFF"

    .line 200
    const/4 v4, 0x4

    invoke-virtual {p1, v4}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x2

    invoke-virtual {p1, v5}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 201
    const/16 v6, 0xc

    invoke-virtual {p1, v6}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x5

    invoke-virtual {p1, v7}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 202
    const/4 v8, 0x7

    invoke-virtual {p1, v8}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v8

    const/16 v9, 0x8

    invoke-virtual {p1, v9}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 203
    const/4 v10, 0x1

    invoke-virtual {p1, v10}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x3

    invoke-virtual {p1, v11}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v11

    .line 204
    const/16 v12, 0xb

    invoke-virtual {p1, v12}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v12

    const/16 v13, 0x9

    invoke-virtual {p1, v13}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v13

    .line 198
    invoke-direct/range {v0 .. v13}, Lcom/android/systemui/moto/CarrierNetworkType$CarrierNetwork;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 205
    .local v0, "cn":Lcom/android/systemui/moto/CarrierNetworkType$CarrierNetwork;
    sget-object v1, Lcom/android/systemui/moto/CarrierNetworkType$CarrierNetwork;->GENERIC:Lcom/android/systemui/moto/CarrierNetworkType$CarrierNetwork;

    invoke-virtual {p0, v1}, Lcom/android/systemui/moto/CarrierNetworkType$CarrierNetwork;->copy(Lcom/android/systemui/moto/CarrierNetworkType$CarrierNetwork;)V

    .line 206
    invoke-virtual {p0, v0}, Lcom/android/systemui/moto/CarrierNetworkType$CarrierNetwork;->copyAvoidEmpty(Lcom/android/systemui/moto/CarrierNetworkType$CarrierNetwork;)V

    .line 207
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "home"    # Ljava/lang/String;
    .param p3, "off"    # Ljava/lang/String;
    .param p4, "g"    # Ljava/lang/String;
    .param p5, "e"    # Ljava/lang/String;
    .param p6, "umts"    # Ljava/lang/String;
    .param p7, "h"    # Ljava/lang/String;
    .param p8, "hspap"    # Ljava/lang/String;
    .param p9, "lte"    # Ljava/lang/String;
    .param p10, "cdma_1x"    # Ljava/lang/String;
    .param p11, "evdo"    # Ljava/lang/String;
    .param p12, "td_scdma"    # Ljava/lang/String;
    .param p13, "lte_ca"    # Ljava/lang/String;

    .prologue
    .line 121
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 124
    iput-object p1, p0, Lcom/android/systemui/moto/CarrierNetworkType$CarrierNetwork;->name:Ljava/lang/String;

    .line 125
    iput-object p2, p0, Lcom/android/systemui/moto/CarrierNetworkType$CarrierNetwork;->home:Ljava/lang/String;

    .line 126
    iput-object p3, p0, Lcom/android/systemui/moto/CarrierNetworkType$CarrierNetwork;->off:Ljava/lang/String;

    .line 127
    iput-object p4, p0, Lcom/android/systemui/moto/CarrierNetworkType$CarrierNetwork;->g:Ljava/lang/String;

    .line 128
    iput-object p5, p0, Lcom/android/systemui/moto/CarrierNetworkType$CarrierNetwork;->e:Ljava/lang/String;

    .line 129
    iput-object p6, p0, Lcom/android/systemui/moto/CarrierNetworkType$CarrierNetwork;->umts:Ljava/lang/String;

    .line 130
    iput-object p7, p0, Lcom/android/systemui/moto/CarrierNetworkType$CarrierNetwork;->h:Ljava/lang/String;

    .line 131
    iput-object p8, p0, Lcom/android/systemui/moto/CarrierNetworkType$CarrierNetwork;->hspap:Ljava/lang/String;

    .line 132
    iput-object p9, p0, Lcom/android/systemui/moto/CarrierNetworkType$CarrierNetwork;->lte:Ljava/lang/String;

    .line 133
    iput-object p10, p0, Lcom/android/systemui/moto/CarrierNetworkType$CarrierNetwork;->cdma_1x:Ljava/lang/String;

    .line 134
    iput-object p11, p0, Lcom/android/systemui/moto/CarrierNetworkType$CarrierNetwork;->evdo:Ljava/lang/String;

    .line 135
    iput-object p12, p0, Lcom/android/systemui/moto/CarrierNetworkType$CarrierNetwork;->td_scdma:Ljava/lang/String;

    .line 136
    iput-object p13, p0, Lcom/android/systemui/moto/CarrierNetworkType$CarrierNetwork;->lte_ca:Ljava/lang/String;

    .line 137
    return-void
.end method

.method public static getGenericLookup(Lcom/android/systemui/moto/NetworkConfig;Landroid/util/SparseArray;)V
    .locals 1
    .param p0, "config"    # Lcom/android/systemui/moto/NetworkConfig;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/systemui/moto/NetworkConfig;",
            "Landroid/util/SparseArray",
            "<",
            "Lcom/android/systemui/moto/CarrierIcons$DataTypeGroup;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 234
    .local p1, "dataLookup":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/systemui/moto/CarrierIcons$DataTypeGroup;>;"
    sget-object v0, Lcom/android/systemui/moto/CarrierNetworkType$CarrierNetwork;->GENERIC:Lcom/android/systemui/moto/CarrierNetworkType$CarrierNetwork;

    invoke-virtual {v0, p0, p1}, Lcom/android/systemui/moto/CarrierNetworkType$CarrierNetwork;->getDataLookupArray(Lcom/android/systemui/moto/NetworkConfig;Landroid/util/SparseArray;)V

    .line 235
    invoke-static {p0, p1}, Lcom/android/systemui/moto/CarrierNetworkType$CarrierNetwork;->updateDataLookupWithConfig(Lcom/android/systemui/moto/NetworkConfig;Landroid/util/SparseArray;)V

    .line 236
    return-void
.end method

.method private static updateDataLookupWithConfig(Lcom/android/systemui/moto/NetworkConfig;Landroid/util/SparseArray;)V
    .locals 7
    .param p0, "config"    # Lcom/android/systemui/moto/NetworkConfig;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/systemui/moto/NetworkConfig;",
            "Landroid/util/SparseArray",
            "<",
            "Lcom/android/systemui/moto/CarrierIcons$DataTypeGroup;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, "dataLookup":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/systemui/moto/CarrierIcons$DataTypeGroup;>;"
    const/16 v6, 0xa

    const/16 v5, 0x9

    const/16 v4, 0x8

    const/16 v3, 0x13

    const/16 v2, 0xf

    .line 239
    iget-boolean v0, p0, Lcom/android/systemui/moto/NetworkConfig;->showAtLeast3G:Z

    if-eqz v0, :cond_0

    .line 240
    invoke-static {}, Lcom/android/systemui/moto/CarrierNetworkType;->-get0()Ljava/util/HashMap;

    move-result-object v0

    const-string/jumbo v1, "3G_W"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/moto/CarrierIcons$DataTypeGroup;

    const/4 v1, 0x7

    invoke-virtual {p1, v1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 241
    invoke-static {}, Lcom/android/systemui/moto/CarrierNetworkType;->-get0()Ljava/util/HashMap;

    move-result-object v0

    const-string/jumbo v1, "3G_W"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/moto/CarrierIcons$DataTypeGroup;

    const/4 v1, 0x4

    invoke-virtual {p1, v1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 242
    invoke-static {}, Lcom/android/systemui/moto/CarrierNetworkType;->-get0()Ljava/util/HashMap;

    move-result-object v0

    const-string/jumbo v1, "3G_W"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/moto/CarrierIcons$DataTypeGroup;

    const/4 v1, 0x1

    invoke-virtual {p1, v1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 243
    invoke-static {}, Lcom/android/systemui/moto/CarrierNetworkType;->-get0()Ljava/util/HashMap;

    move-result-object v0

    const-string/jumbo v1, "3G_W"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/moto/CarrierIcons$DataTypeGroup;

    const/16 v1, 0x10

    invoke-virtual {p1, v1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 244
    invoke-static {}, Lcom/android/systemui/moto/CarrierNetworkType;->-get0()Ljava/util/HashMap;

    move-result-object v0

    const-string/jumbo v1, "3G_W"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/moto/CarrierIcons$DataTypeGroup;

    const/4 v1, 0x2

    invoke-virtual {p1, v1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 245
    invoke-static {}, Lcom/android/systemui/moto/CarrierNetworkType;->-get0()Ljava/util/HashMap;

    move-result-object v0

    const-string/jumbo v1, "3G_W"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/moto/CarrierIcons$DataTypeGroup;

    const/4 v1, 0x0

    invoke-virtual {p1, v1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 247
    :cond_0
    iget-boolean v0, p0, Lcom/android/systemui/moto/NetworkConfig;->hspaDataDistinguishable:Z

    if-eqz v0, :cond_3

    .line 248
    invoke-static {}, Lcom/android/systemui/moto/CarrierNetworkType;->-get0()Ljava/util/HashMap;

    move-result-object v0

    const-string/jumbo v1, "H_W"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/moto/CarrierIcons$DataTypeGroup;

    invoke-virtual {p1, v4, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 249
    invoke-static {}, Lcom/android/systemui/moto/CarrierNetworkType;->-get0()Ljava/util/HashMap;

    move-result-object v0

    const-string/jumbo v1, "H_W"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/moto/CarrierIcons$DataTypeGroup;

    invoke-virtual {p1, v6, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 250
    invoke-static {}, Lcom/android/systemui/moto/CarrierNetworkType;->-get0()Ljava/util/HashMap;

    move-result-object v0

    const-string/jumbo v1, "H_W"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/moto/CarrierIcons$DataTypeGroup;

    invoke-virtual {p1, v5, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 251
    iget-boolean v0, p0, Lcom/android/systemui/moto/NetworkConfig;->hspapDataDistinguishable:Z

    if-eqz v0, :cond_2

    .line 252
    invoke-static {}, Lcom/android/systemui/moto/CarrierNetworkType;->-get0()Ljava/util/HashMap;

    move-result-object v0

    const-string/jumbo v1, "H+_W"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/moto/CarrierIcons$DataTypeGroup;

    invoke-virtual {p1, v2, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 263
    :goto_0
    iget-boolean v0, p0, Lcom/android/systemui/moto/NetworkConfig;->show4gForLte:Z

    if-eqz v0, :cond_5

    .line 264
    invoke-static {}, Lcom/android/systemui/moto/CarrierNetworkType;->-get0()Ljava/util/HashMap;

    move-result-object v0

    const-string/jumbo v1, "4G_W"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/moto/CarrierIcons$DataTypeGroup;

    const/16 v1, 0xd

    invoke-virtual {p1, v1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 266
    iget-boolean v0, p0, Lcom/android/systemui/moto/NetworkConfig;->hideLtePlus:Z

    if-eqz v0, :cond_4

    .line 267
    invoke-static {}, Lcom/android/systemui/moto/CarrierNetworkType;->-get0()Ljava/util/HashMap;

    move-result-object v0

    const-string/jumbo v1, "4G_W"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/moto/CarrierIcons$DataTypeGroup;

    invoke-virtual {p1, v3, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 277
    :cond_1
    :goto_1
    return-void

    .line 254
    :cond_2
    invoke-static {}, Lcom/android/systemui/moto/CarrierNetworkType;->-get0()Ljava/util/HashMap;

    move-result-object v0

    const-string/jumbo v1, "H_W"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/moto/CarrierIcons$DataTypeGroup;

    invoke-virtual {p1, v2, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_0

    .line 257
    :cond_3
    invoke-static {}, Lcom/android/systemui/moto/CarrierNetworkType;->-get0()Ljava/util/HashMap;

    move-result-object v0

    const-string/jumbo v1, "3G_W"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/moto/CarrierIcons$DataTypeGroup;

    invoke-virtual {p1, v4, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 258
    invoke-static {}, Lcom/android/systemui/moto/CarrierNetworkType;->-get0()Ljava/util/HashMap;

    move-result-object v0

    const-string/jumbo v1, "3G_W"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/moto/CarrierIcons$DataTypeGroup;

    invoke-virtual {p1, v6, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 259
    invoke-static {}, Lcom/android/systemui/moto/CarrierNetworkType;->-get0()Ljava/util/HashMap;

    move-result-object v0

    const-string/jumbo v1, "3G_W"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/moto/CarrierIcons$DataTypeGroup;

    invoke-virtual {p1, v5, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 260
    invoke-static {}, Lcom/android/systemui/moto/CarrierNetworkType;->-get0()Ljava/util/HashMap;

    move-result-object v0

    const-string/jumbo v1, "3G_W"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/moto/CarrierIcons$DataTypeGroup;

    invoke-virtual {p1, v2, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_0

    .line 269
    :cond_4
    invoke-static {}, Lcom/android/systemui/moto/CarrierNetworkType;->-get0()Ljava/util/HashMap;

    move-result-object v0

    const-string/jumbo v1, "4G+_W"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/moto/CarrierIcons$DataTypeGroup;

    invoke-virtual {p1, v3, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_1

    .line 272
    :cond_5
    iget-boolean v0, p0, Lcom/android/systemui/moto/NetworkConfig;->hideLtePlus:Z

    if-eqz v0, :cond_1

    .line 273
    invoke-static {}, Lcom/android/systemui/moto/CarrierNetworkType;->-get0()Ljava/util/HashMap;

    move-result-object v0

    const-string/jumbo v1, "LTE_W"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/moto/CarrierIcons$DataTypeGroup;

    invoke-virtual {p1, v3, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_1
.end method


# virtual methods
.method public copy(Lcom/android/systemui/moto/CarrierNetworkType$CarrierNetwork;)V
    .locals 1
    .param p1, "other"    # Lcom/android/systemui/moto/CarrierNetworkType$CarrierNetwork;

    .prologue
    .line 140
    iget-object v0, p1, Lcom/android/systemui/moto/CarrierNetworkType$CarrierNetwork;->name:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/systemui/moto/CarrierNetworkType$CarrierNetwork;->name:Ljava/lang/String;

    .line 141
    iget-object v0, p1, Lcom/android/systemui/moto/CarrierNetworkType$CarrierNetwork;->home:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/systemui/moto/CarrierNetworkType$CarrierNetwork;->home:Ljava/lang/String;

    .line 142
    iget-object v0, p1, Lcom/android/systemui/moto/CarrierNetworkType$CarrierNetwork;->off:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/systemui/moto/CarrierNetworkType$CarrierNetwork;->off:Ljava/lang/String;

    .line 143
    iget-object v0, p1, Lcom/android/systemui/moto/CarrierNetworkType$CarrierNetwork;->g:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/systemui/moto/CarrierNetworkType$CarrierNetwork;->g:Ljava/lang/String;

    .line 144
    iget-object v0, p1, Lcom/android/systemui/moto/CarrierNetworkType$CarrierNetwork;->e:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/systemui/moto/CarrierNetworkType$CarrierNetwork;->e:Ljava/lang/String;

    .line 145
    iget-object v0, p1, Lcom/android/systemui/moto/CarrierNetworkType$CarrierNetwork;->umts:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/systemui/moto/CarrierNetworkType$CarrierNetwork;->umts:Ljava/lang/String;

    .line 146
    iget-object v0, p1, Lcom/android/systemui/moto/CarrierNetworkType$CarrierNetwork;->h:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/systemui/moto/CarrierNetworkType$CarrierNetwork;->h:Ljava/lang/String;

    .line 147
    iget-object v0, p1, Lcom/android/systemui/moto/CarrierNetworkType$CarrierNetwork;->hspap:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/systemui/moto/CarrierNetworkType$CarrierNetwork;->hspap:Ljava/lang/String;

    .line 148
    iget-object v0, p1, Lcom/android/systemui/moto/CarrierNetworkType$CarrierNetwork;->lte:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/systemui/moto/CarrierNetworkType$CarrierNetwork;->lte:Ljava/lang/String;

    .line 149
    iget-object v0, p1, Lcom/android/systemui/moto/CarrierNetworkType$CarrierNetwork;->cdma_1x:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/systemui/moto/CarrierNetworkType$CarrierNetwork;->cdma_1x:Ljava/lang/String;

    .line 150
    iget-object v0, p1, Lcom/android/systemui/moto/CarrierNetworkType$CarrierNetwork;->evdo:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/systemui/moto/CarrierNetworkType$CarrierNetwork;->evdo:Ljava/lang/String;

    .line 151
    iget-object v0, p1, Lcom/android/systemui/moto/CarrierNetworkType$CarrierNetwork;->td_scdma:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/systemui/moto/CarrierNetworkType$CarrierNetwork;->td_scdma:Ljava/lang/String;

    .line 152
    iget-object v0, p1, Lcom/android/systemui/moto/CarrierNetworkType$CarrierNetwork;->lte_ca:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/systemui/moto/CarrierNetworkType$CarrierNetwork;->lte_ca:Ljava/lang/String;

    .line 153
    return-void
.end method

.method public copyAvoidEmpty(Lcom/android/systemui/moto/CarrierNetworkType$CarrierNetwork;)V
    .locals 1
    .param p1, "other"    # Lcom/android/systemui/moto/CarrierNetworkType$CarrierNetwork;

    .prologue
    .line 156
    iget-object v0, p1, Lcom/android/systemui/moto/CarrierNetworkType$CarrierNetwork;->name:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 157
    iget-object v0, p1, Lcom/android/systemui/moto/CarrierNetworkType$CarrierNetwork;->name:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/systemui/moto/CarrierNetworkType$CarrierNetwork;->name:Ljava/lang/String;

    .line 159
    :cond_0
    iget-object v0, p1, Lcom/android/systemui/moto/CarrierNetworkType$CarrierNetwork;->home:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 160
    iget-object v0, p1, Lcom/android/systemui/moto/CarrierNetworkType$CarrierNetwork;->home:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/systemui/moto/CarrierNetworkType$CarrierNetwork;->home:Ljava/lang/String;

    .line 162
    :cond_1
    iget-object v0, p1, Lcom/android/systemui/moto/CarrierNetworkType$CarrierNetwork;->off:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 163
    iget-object v0, p1, Lcom/android/systemui/moto/CarrierNetworkType$CarrierNetwork;->off:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/systemui/moto/CarrierNetworkType$CarrierNetwork;->off:Ljava/lang/String;

    .line 165
    :cond_2
    iget-object v0, p1, Lcom/android/systemui/moto/CarrierNetworkType$CarrierNetwork;->g:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 166
    iget-object v0, p1, Lcom/android/systemui/moto/CarrierNetworkType$CarrierNetwork;->g:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/systemui/moto/CarrierNetworkType$CarrierNetwork;->g:Ljava/lang/String;

    .line 168
    :cond_3
    iget-object v0, p1, Lcom/android/systemui/moto/CarrierNetworkType$CarrierNetwork;->e:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 169
    iget-object v0, p1, Lcom/android/systemui/moto/CarrierNetworkType$CarrierNetwork;->e:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/systemui/moto/CarrierNetworkType$CarrierNetwork;->e:Ljava/lang/String;

    .line 171
    :cond_4
    iget-object v0, p1, Lcom/android/systemui/moto/CarrierNetworkType$CarrierNetwork;->umts:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 172
    iget-object v0, p1, Lcom/android/systemui/moto/CarrierNetworkType$CarrierNetwork;->umts:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/systemui/moto/CarrierNetworkType$CarrierNetwork;->umts:Ljava/lang/String;

    .line 174
    :cond_5
    iget-object v0, p1, Lcom/android/systemui/moto/CarrierNetworkType$CarrierNetwork;->h:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_6

    .line 175
    iget-object v0, p1, Lcom/android/systemui/moto/CarrierNetworkType$CarrierNetwork;->h:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/systemui/moto/CarrierNetworkType$CarrierNetwork;->h:Ljava/lang/String;

    .line 177
    :cond_6
    iget-object v0, p1, Lcom/android/systemui/moto/CarrierNetworkType$CarrierNetwork;->hspap:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_7

    .line 178
    iget-object v0, p1, Lcom/android/systemui/moto/CarrierNetworkType$CarrierNetwork;->hspap:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/systemui/moto/CarrierNetworkType$CarrierNetwork;->hspap:Ljava/lang/String;

    .line 180
    :cond_7
    iget-object v0, p1, Lcom/android/systemui/moto/CarrierNetworkType$CarrierNetwork;->lte:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_8

    .line 181
    iget-object v0, p1, Lcom/android/systemui/moto/CarrierNetworkType$CarrierNetwork;->lte:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/systemui/moto/CarrierNetworkType$CarrierNetwork;->lte:Ljava/lang/String;

    .line 183
    :cond_8
    iget-object v0, p1, Lcom/android/systemui/moto/CarrierNetworkType$CarrierNetwork;->cdma_1x:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_9

    .line 184
    iget-object v0, p1, Lcom/android/systemui/moto/CarrierNetworkType$CarrierNetwork;->cdma_1x:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/systemui/moto/CarrierNetworkType$CarrierNetwork;->cdma_1x:Ljava/lang/String;

    .line 186
    :cond_9
    iget-object v0, p1, Lcom/android/systemui/moto/CarrierNetworkType$CarrierNetwork;->evdo:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_a

    .line 187
    iget-object v0, p1, Lcom/android/systemui/moto/CarrierNetworkType$CarrierNetwork;->evdo:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/systemui/moto/CarrierNetworkType$CarrierNetwork;->evdo:Ljava/lang/String;

    .line 189
    :cond_a
    iget-object v0, p1, Lcom/android/systemui/moto/CarrierNetworkType$CarrierNetwork;->td_scdma:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_b

    .line 190
    iget-object v0, p1, Lcom/android/systemui/moto/CarrierNetworkType$CarrierNetwork;->td_scdma:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/systemui/moto/CarrierNetworkType$CarrierNetwork;->td_scdma:Ljava/lang/String;

    .line 192
    :cond_b
    iget-object v0, p1, Lcom/android/systemui/moto/CarrierNetworkType$CarrierNetwork;->lte_ca:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_c

    .line 193
    iget-object v0, p1, Lcom/android/systemui/moto/CarrierNetworkType$CarrierNetwork;->lte_ca:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/systemui/moto/CarrierNetworkType$CarrierNetwork;->lte_ca:Ljava/lang/String;

    .line 195
    :cond_c
    return-void
.end method

.method public getDataLookupArray(Lcom/android/systemui/moto/NetworkConfig;Landroid/util/SparseArray;)V
    .locals 2
    .param p1, "config"    # Lcom/android/systemui/moto/NetworkConfig;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/systemui/moto/NetworkConfig;",
            "Landroid/util/SparseArray",
            "<",
            "Lcom/android/systemui/moto/CarrierIcons$DataTypeGroup;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 210
    .local p2, "dataLookup":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/systemui/moto/CarrierIcons$DataTypeGroup;>;"
    invoke-static {}, Lcom/android/systemui/moto/CarrierNetworkType;->-get0()Ljava/util/HashMap;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/moto/CarrierNetworkType$CarrierNetwork;->cdma_1x:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/moto/CarrierIcons$DataTypeGroup;

    const/4 v1, 0x7

    invoke-virtual {p2, v1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 211
    invoke-static {}, Lcom/android/systemui/moto/CarrierNetworkType;->-get0()Ljava/util/HashMap;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/moto/CarrierNetworkType$CarrierNetwork;->cdma_1x:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/moto/CarrierIcons$DataTypeGroup;

    const/4 v1, 0x4

    invoke-virtual {p2, v1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 212
    invoke-static {}, Lcom/android/systemui/moto/CarrierNetworkType;->-get0()Ljava/util/HashMap;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/moto/CarrierNetworkType$CarrierNetwork;->g:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/moto/CarrierIcons$DataTypeGroup;

    const/4 v1, 0x1

    invoke-virtual {p2, v1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 213
    invoke-static {}, Lcom/android/systemui/moto/CarrierNetworkType;->-get0()Ljava/util/HashMap;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/moto/CarrierNetworkType$CarrierNetwork;->g:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/moto/CarrierIcons$DataTypeGroup;

    const/16 v1, 0x10

    invoke-virtual {p2, v1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 214
    invoke-static {}, Lcom/android/systemui/moto/CarrierNetworkType;->-get0()Ljava/util/HashMap;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/moto/CarrierNetworkType$CarrierNetwork;->e:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/moto/CarrierIcons$DataTypeGroup;

    const/4 v1, 0x2

    invoke-virtual {p2, v1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 215
    invoke-static {}, Lcom/android/systemui/moto/CarrierNetworkType;->-get0()Ljava/util/HashMap;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/moto/CarrierNetworkType$CarrierNetwork;->evdo:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/moto/CarrierIcons$DataTypeGroup;

    const/4 v1, 0x5

    invoke-virtual {p2, v1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 216
    invoke-static {}, Lcom/android/systemui/moto/CarrierNetworkType;->-get0()Ljava/util/HashMap;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/moto/CarrierNetworkType$CarrierNetwork;->evdo:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/moto/CarrierIcons$DataTypeGroup;

    const/4 v1, 0x6

    invoke-virtual {p2, v1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 217
    invoke-static {}, Lcom/android/systemui/moto/CarrierNetworkType;->-get0()Ljava/util/HashMap;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/moto/CarrierNetworkType$CarrierNetwork;->evdo:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/moto/CarrierIcons$DataTypeGroup;

    const/16 v1, 0xc

    invoke-virtual {p2, v1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 218
    invoke-static {}, Lcom/android/systemui/moto/CarrierNetworkType;->-get0()Ljava/util/HashMap;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/moto/CarrierNetworkType$CarrierNetwork;->evdo:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/moto/CarrierIcons$DataTypeGroup;

    const/16 v1, 0xe

    invoke-virtual {p2, v1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 219
    invoke-static {}, Lcom/android/systemui/moto/CarrierNetworkType;->-get0()Ljava/util/HashMap;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/moto/CarrierNetworkType$CarrierNetwork;->umts:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/moto/CarrierIcons$DataTypeGroup;

    const/4 v1, 0x3

    invoke-virtual {p2, v1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 220
    invoke-static {}, Lcom/android/systemui/moto/CarrierNetworkType;->-get0()Ljava/util/HashMap;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/moto/CarrierNetworkType$CarrierNetwork;->h:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/moto/CarrierIcons$DataTypeGroup;

    const/16 v1, 0x8

    invoke-virtual {p2, v1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 221
    invoke-static {}, Lcom/android/systemui/moto/CarrierNetworkType;->-get0()Ljava/util/HashMap;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/moto/CarrierNetworkType$CarrierNetwork;->h:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/moto/CarrierIcons$DataTypeGroup;

    const/16 v1, 0xa

    invoke-virtual {p2, v1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 222
    invoke-static {}, Lcom/android/systemui/moto/CarrierNetworkType;->-get0()Ljava/util/HashMap;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/moto/CarrierNetworkType$CarrierNetwork;->h:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/moto/CarrierIcons$DataTypeGroup;

    const/16 v1, 0x9

    invoke-virtual {p2, v1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 223
    invoke-static {}, Lcom/android/systemui/moto/CarrierNetworkType;->-get0()Ljava/util/HashMap;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/moto/CarrierNetworkType$CarrierNetwork;->hspap:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/moto/CarrierIcons$DataTypeGroup;

    const/16 v1, 0xf

    invoke-virtual {p2, v1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 224
    invoke-static {}, Lcom/android/systemui/moto/CarrierNetworkType;->-get0()Ljava/util/HashMap;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/moto/CarrierNetworkType$CarrierNetwork;->lte:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/moto/CarrierIcons$DataTypeGroup;

    const/16 v1, 0xd

    invoke-virtual {p2, v1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 225
    invoke-static {}, Lcom/android/systemui/moto/CarrierNetworkType;->-get0()Ljava/util/HashMap;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/moto/CarrierNetworkType$CarrierNetwork;->off:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/moto/CarrierIcons$DataTypeGroup;

    const/16 v1, 0xb

    invoke-virtual {p2, v1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 226
    invoke-static {}, Lcom/android/systemui/moto/CarrierNetworkType;->-get0()Ljava/util/HashMap;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/moto/CarrierNetworkType$CarrierNetwork;->off:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/moto/CarrierIcons$DataTypeGroup;

    const/4 v1, 0x0

    invoke-virtual {p2, v1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 227
    invoke-static {}, Lcom/android/systemui/moto/CarrierNetworkType;->-get0()Ljava/util/HashMap;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/moto/CarrierNetworkType$CarrierNetwork;->off:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/moto/CarrierIcons$DataTypeGroup;

    const/16 v1, 0x12

    invoke-virtual {p2, v1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 228
    invoke-static {}, Lcom/android/systemui/moto/CarrierNetworkType;->-get0()Ljava/util/HashMap;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/moto/CarrierNetworkType$CarrierNetwork;->td_scdma:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/moto/CarrierIcons$DataTypeGroup;

    const/16 v1, 0x11

    invoke-virtual {p2, v1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 230
    invoke-static {}, Lcom/android/systemui/moto/CarrierNetworkType;->-get0()Ljava/util/HashMap;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/moto/CarrierNetworkType$CarrierNetwork;->lte_ca:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/moto/CarrierIcons$DataTypeGroup;

    const/16 v1, 0x13

    invoke-virtual {p2, v1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 231
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    const/16 v3, 0x2c

    .line 280
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 281
    .local v0, "builder":Ljava/lang/StringBuilder;
    iget-object v1, p0, Lcom/android/systemui/moto/CarrierNetworkType$CarrierNetwork;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/moto/CarrierNetworkType$CarrierNetwork;->home:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 282
    iget-object v2, p0, Lcom/android/systemui/moto/CarrierNetworkType$CarrierNetwork;->off:Ljava/lang/String;

    .line 281
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 282
    iget-object v2, p0, Lcom/android/systemui/moto/CarrierNetworkType$CarrierNetwork;->g:Ljava/lang/String;

    .line 281
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 283
    iget-object v2, p0, Lcom/android/systemui/moto/CarrierNetworkType$CarrierNetwork;->e:Ljava/lang/String;

    .line 281
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 283
    iget-object v2, p0, Lcom/android/systemui/moto/CarrierNetworkType$CarrierNetwork;->umts:Ljava/lang/String;

    .line 281
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 284
    iget-object v2, p0, Lcom/android/systemui/moto/CarrierNetworkType$CarrierNetwork;->h:Ljava/lang/String;

    .line 281
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 284
    iget-object v2, p0, Lcom/android/systemui/moto/CarrierNetworkType$CarrierNetwork;->hspap:Ljava/lang/String;

    .line 281
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 285
    iget-object v2, p0, Lcom/android/systemui/moto/CarrierNetworkType$CarrierNetwork;->lte:Ljava/lang/String;

    .line 281
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 285
    iget-object v2, p0, Lcom/android/systemui/moto/CarrierNetworkType$CarrierNetwork;->cdma_1x:Ljava/lang/String;

    .line 281
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 286
    iget-object v2, p0, Lcom/android/systemui/moto/CarrierNetworkType$CarrierNetwork;->evdo:Ljava/lang/String;

    .line 281
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 286
    iget-object v2, p0, Lcom/android/systemui/moto/CarrierNetworkType$CarrierNetwork;->td_scdma:Ljava/lang/String;

    .line 281
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 287
    iget-object v2, p0, Lcom/android/systemui/moto/CarrierNetworkType$CarrierNetwork;->lte_ca:Ljava/lang/String;

    .line 281
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 288
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
