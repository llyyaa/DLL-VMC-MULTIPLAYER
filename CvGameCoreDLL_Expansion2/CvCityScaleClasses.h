#pragma once
#include "CvInfos.h"
#include "CvEnums.h"

#ifdef MOD_GLOBAL_CITY_SCALES

class CvCityScaleEntry :
    public CvBaseInfo
{
public:
    CvCityScaleEntry() = default;
    ~CvCityScaleEntry();

    bool CacheResults(Database::Results& kResults, CvDatabaseUtility& kUtility) override;

public:
    struct FreeBuildingClassInfo {
        BuildingClassTypes m_eBuildingClass = NO_BUILDINGCLASS;
        int m_iNum = 1;
    };

    inline int GetMinPopulation() const { return m_iMinPopulation; }
    inline std::vector<FreeBuildingClassInfo>& GetFreeBuildingClassInfo() { return m_vFreeBuildingClassInfo; }

protected:
    int m_iMinPopulation = -1;
    std::vector<FreeBuildingClassInfo> m_vFreeBuildingClassInfo;
};

class CvCityScaleXMLEntries
{
public:
    CvCityScaleXMLEntries() = default;
    ~CvCityScaleXMLEntries() = default;

    // Accessor functions
    inline std::vector<CvCityScaleEntry*>& GetEntries() { return m_paCvCityScaleEntries; }
    inline int GetNumCityScales() { return m_paCvCityScaleEntries.size(); }
    inline _Ret_maybenull_ CvCityScaleEntry* GetEntry(int index) { return m_paCvCityScaleEntries[index]; }
private:
    std::vector<CvCityScaleEntry*> m_paCvCityScaleEntries;
};

#endif